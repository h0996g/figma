import 'package:figma/components/big_screen/big_components.dart';
import 'package:figma/components/const.dart';
import 'package:figma/components/size.dart';
import 'package:figma/controllers/main_controller.dart';
import 'package:figma/model/list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // double mediaHeight = MediaQuery.of(context).size.height;
    double screenSizeWidthOnly1 = MediaQueryValues(context).bigScreenWidthOnly;
    double bigScreenHeightOnly = MediaQueryValues(context).bigScreenHeightOnly;
    double fontSize = screenSizeWidthOnly1 * 0.04;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 4,
        childAspectRatio: 1,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _showQuantityDialog(context, products[index]),
          child:
              buildProductCard(products[index], fontSize, bigScreenHeightOnly),
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: const EdgeInsets.all(16),
          title: const Text(
            'Enter quantity',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  quantity = value;
                },
                decoration: const InputDecoration(
                  hintText: "Enter quantity",
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black),
                    ),
                    // style: TextButton.styleFrom(
                    //   backgroundColor: Colors.grey.shade300,
                    // ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextButton(
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                    // style: TextButton.styleFrom(
                    //   // foregroundColor: Color.fromRGBO(33, 150, 83, 1),
                    //   backgroundColor: Color.fromARGB(255, 219, 248, 231),
                    // ),
                    onPressed: () {
                      if (quantity != null && quantity!.isNotEmpty) {
                        _saveMealItemToDatabase(product, quantity!);
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ),
              ],
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
