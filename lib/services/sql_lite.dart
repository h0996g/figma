import 'package:figma/model/list_item.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static Database? _db;
  static final DatabaseService instance = DatabaseService._constructor();

  final String _mealsTableName = "meals";
  final String _mealsIdColumnName = "id";
  final String _mealsQuantityColumnName = "quantity";
  final String _mealsNameColumnName = "name";
  final String _mealsImageUrlColumnName = "imageUrl";
  final String _mealsSubtitleColumnName = "subtitle";
  final String _mealsIsPcsColumnName = "isPcs";
  final String _mealsPriceColumnName = "price";
  final String _mealsOldPriceColumnName = "oldPrice";
  final String _mealsDiscountColumnName = "discount";
  final String _mealsIsFrezzeColumnName = "isFrezze";

  DatabaseService._constructor();

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, "meals_db.db");
    final database = await openDatabase(
      databasePath,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
        CREATE TABLE $_mealsTableName (
          $_mealsIdColumnName INTEGER PRIMARY KEY AUTOINCREMENT,
          $_mealsQuantityColumnName TEXT,
          $_mealsNameColumnName TEXT NOT NULL,
          $_mealsImageUrlColumnName TEXT,
          $_mealsSubtitleColumnName TEXT,
          $_mealsIsPcsColumnName INTEGER,
          $_mealsPriceColumnName TEXT,
          $_mealsOldPriceColumnName TEXT,
          $_mealsDiscountColumnName TEXT,
          $_mealsIsFrezzeColumnName INTEGER
        )
        ''');
      },
    );
    return database;
  }

  Future<void> addMealItem(MealItem mealItem) async {
    final db = await database;
    await db.insert(
      _mealsTableName,
      {
        _mealsQuantityColumnName: mealItem.quantity ?? '',
        _mealsNameColumnName: mealItem.name ?? '',
        _mealsImageUrlColumnName: mealItem.imageUrl ?? '',
        _mealsSubtitleColumnName: mealItem.subtitle ?? '',
        _mealsIsPcsColumnName: mealItem.isPcs == true ? 1 : 0,
        _mealsPriceColumnName: mealItem.price ?? '',
        _mealsOldPriceColumnName: mealItem.oldPrice ?? '',
        _mealsDiscountColumnName: mealItem.discount ?? '',
        _mealsIsFrezzeColumnName: mealItem.isFrezze == true ? 1 : 0,
      },
    );
  }

  Future<List<MealItem>> getMealItems() async {
    final db = await database;
    final data = await db.query(_mealsTableName);
    return data
        .map((e) => MealItem(
              quantity: e[_mealsQuantityColumnName] as String? ?? '',
              name: e[_mealsNameColumnName] as String? ?? '',
              imageUrl: e[_mealsImageUrlColumnName] as String?,
              subtitle: e[_mealsSubtitleColumnName] as String?,
              isPcs: e[_mealsIsPcsColumnName] == 1,
              price: e[_mealsPriceColumnName] as String?,
              oldPrice: e[_mealsOldPriceColumnName] as String?,
              discount: e[_mealsDiscountColumnName] as String?,
              isFrezze: e[_mealsIsFrezzeColumnName] == 1,
            ))
        .toList();
  }

  Future<void> updateMealItem(int id, MealItem mealItem) async {
    final db = await database;
    await db.update(
      _mealsTableName,
      {
        _mealsQuantityColumnName: mealItem.quantity,
        _mealsNameColumnName: mealItem.name,
        _mealsImageUrlColumnName: mealItem.imageUrl,
        _mealsSubtitleColumnName: mealItem.subtitle,
        _mealsIsPcsColumnName: mealItem.isPcs == true ? 1 : 0,
        _mealsPriceColumnName: mealItem.price,
        _mealsOldPriceColumnName: mealItem.oldPrice,
        _mealsDiscountColumnName: mealItem.discount,
        _mealsIsFrezzeColumnName: mealItem.isFrezze == true ? 1 : 0,
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteMealItem(int id) async {
    final db = await database;
    await db.delete(
      _mealsTableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
