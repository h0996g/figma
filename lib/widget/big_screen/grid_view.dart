import 'package:figma/const_size.dart';
import 'package:figma/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductGridView extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Quarter Charcoal Grilled Chicken Meal',
        imageUrl:
            'assets/images/fresh-tasty-homemade-burger-wooden-table (2) (1) 1.png', // Replace with actual image paths
        price: 500),
    Product(
        name: 'Broasted Snack Meal',
        imageUrl:
            'assets/images/fresh-tasty-homemade-burger-wooden-table (2) (1) 1-1.png',
        price: 650),
    Product(
        name: 'Chicken Shawarma Shake',
        imageUrl:
            'assets/images/fresh-tasty-homemade-burger-wooden-table (2) (1) 1-2.png',
        price: 700),
    Product(
        name: 'Beef Shawarma Shake',
        imageUrl:
            'assets/images/fresh-tasty-homemade-burger-wooden-table (2) (1) 1-3.png',
        price: 650),
    Product(
        name: 'Hat Trick 3 Meat Shawarma + Fries',
        imageUrl:
            'assets/images/fresh-tasty-homemade-burger-wooden-table (2) (1) 1-4.png',
        price: 1200),
    Product(
        name: 'Hat Trick 3 Meat Shawarma + Fries',
        imageUrl:
            'assets/images/fresh-tasty-homemade-burger-wooden-table (2) (1) 1-1.png',
        price: 1200),
    // Add more products as needed
  ];

  ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5, // Number of columns
        crossAxisSpacing: 5,
        mainAxisSpacing: 3,
        childAspectRatio: 1, // Adjust for card size and spacing
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return buildProductCard(products[index]);
      },
    );
  }

  Widget buildProductCard(Product product) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                product.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: Get.height * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize * 0.9,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${product.price}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize * 0.9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        ' DZD',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
