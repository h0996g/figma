import 'package:figma/components/big_screen/big_components.dart';
import 'package:figma/components/const.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    double screenSizeWidthOnly1 = MediaQuery.of(context).size.width * 0.3 - 40;

    double fontSize = screenSizeWidthOnly1 * 0.04;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5, // Number of columns
        crossAxisSpacing: 5,
        mainAxisSpacing: 3,
        childAspectRatio: 0.95, // Adjust for card size and spacing
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return buildProductCard(products[index], fontSize, mediaHeight);
      },
    );
  }
}
