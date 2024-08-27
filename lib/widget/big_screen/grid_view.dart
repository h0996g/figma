import 'package:figma/components/big_screen/big_components.dart';
import 'package:figma/components/const.dart';
import 'package:figma/controllers/main_controller.dart';
import 'package:figma/model/list_item.dart';
import 'package:figma/services/sql_lite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    double screenSizeWidthOnly1 = MediaQuery.of(context).size.width * 0.3 - 40;
    double fontSize = screenSizeWidthOnly1 * 0.04;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 5,
        mainAxisSpacing: 3,
        childAspectRatio: 0.95,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _showQuantityDialog(context, products[index]),
          child: buildProductCard(products[index], fontSize, mediaHeight),
        );
      },
    );
  }

  void _showQuantityDialog(BuildContext context, MealItem product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String? quantity;
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text('Enter quantity for ${product.name}'),
          content: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              quantity = value;
            },
            decoration: const InputDecoration(hintText: "Enter quantity"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                if (quantity != null && quantity!.isNotEmpty) {
                  _saveMealItemToDatabase(product, quantity!);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  void _saveMealItemToDatabase(MealItem product, String quantity) async {
    MainController controller = Get.find();
    final updatedProduct = MealItem(
      quantity: quantity,
      name: product.name,
      imageUrl: product.imageUrl,
      subtitle: product.subtitle,
      isPcs: product.isPcs,
      price: product.price,
      oldPrice: product.oldPrice,
      discount: product.discount,
      isFrezze: product.isFrezze,
    );
    controller.createLItem(data: updatedProduct.toJson());
    // await DatabaseService.instance.addMealItem(updatedProduct);
  }
}
