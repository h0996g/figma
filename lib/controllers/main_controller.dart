import 'package:figma/model/list_item.dart';
import 'package:figma/services/const_api.dart';
import 'package:figma/services/http_service.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;

import 'package:get/get_rx/get_rx.dart';

class MainController extends GetxController {
  final currentIndexBarBig = 0.obs;
  RxBool loadingGetItem = false.obs;
  int get currentIndex => currentIndexBarBig.value;
  RxBool loadingAddItem = false.obs;
  RxBool loadingDeleteItem = false.obs;
  RxBool loadingUpdateItem = false.obs;

  var selectedIndex = 2.obs;

  void changeIndex2(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    getItem();
  }

  RxList<MealItem> mealItems = <MealItem>[
    MealItem(
        quantity: '1',
        name: 'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
        subtitle: 'Italien - Stor',
        isPcs: true,
        price: '2800',
        oldPrice: '300',
        discount: '20%',
        isFrezze: true),
  ].obs;
  void changeIndex(int index) {
    currentIndexBarBig.value = index;
  }

  Future<void> createLItem({
    required Map<String, dynamic> data,
  }) async {
    loadingAddItem.value = true;
    Httplar.httpPost(path: ADDITEM, data: data).then((value) async {
      if (value.statusCode == 201) {
        // var jsonResponse =
        //     convert.jsonDecode(value.body) as Map<String, dynamic>;
        // mealItems.add(MealItem.fromJson(jsonResponse));
        await getItem();
        print(mealItems);
        loadingAddItem.value = false;
      } else {
        await getItem();

        loadingAddItem.value = false;
      }
    }).catchError((e) {
      loadingAddItem.value = false;
      print(e.toString());
    });
  }

  Future<void> getItem() async {
    loadingGetItem.value = true;
    Httplar.httpget(path: GETITEM).then((value) {
      if (value.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(value.body) as List<dynamic>;
        mealItems.value =
            jsonResponse.map((item) => MealItem.fromJson(item)).toList();
        print(mealItems);
      } else {
        print('Error fetching items: ${value.statusCode}');
      }
      loadingGetItem.value = false;
    }).catchError((e) {
      loadingGetItem.value = false;
      print(e.toString());
    });
  }

  Future<void> deleteItem({required String id}) async {
    loadingDeleteItem.value = true;
    Httplar.httpdelete(path: '$DELETEITEM/$id').then((value) async {
      if (value.statusCode == 200) {
        mealItems.removeWhere((item) => item.id == id);
        print('Item deleted: $id');
      } else {
        print('Error deleting item: ${value.statusCode}');
      }
      loadingDeleteItem.value = false;
    }).catchError((e) {
      loadingDeleteItem.value = false;
      print(e.toString());
    });
  }

  Future<void> updateFrezzeStatus(String id, bool isFrezze) async {
    loadingUpdateItem.value = true;
    final data = {'isFrezze': isFrezze};

    Httplar.httpPut(path: '$UPDATEITEM/$id', data: data).then((value) async {
      if (value.statusCode == 200) {
        final updatedItem = mealItems.firstWhere((item) => item.id == id);
        updatedItem.isFrezze = isFrezze;
        mealItems.refresh();
        print('Item updated: $id, isFrezze: $isFrezze');
      } else {
        print('Error updating item: ${value.statusCode}');
      }
      loadingUpdateItem.value = false;
    }).catchError((e) {
      loadingUpdateItem.value = false;
      print(e.toString());
    });
  }
}
