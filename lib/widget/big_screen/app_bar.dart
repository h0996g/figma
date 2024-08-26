import 'package:figma/components/big_screen/big_components.dart';
import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(
        (Get.width * 0.75) * 0.07,
      );

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Material(
        elevation: 1,
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Center(
              child: SizedBox(
                width: Get.width * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          itemAppBar(
                            'assets/icons/main_screen/Vector-9.svg',
                            'Categories',
                          ),
                          itemAppBar(
                            'assets/icons/main_screen/Vector-10.svg',
                            'Food',
                          ),
                          itemAppBar(
                            'assets/icons/main_screen/Vector-11.svg',
                            'Favourites',
                          ),
                          itemAppBar(
                            'assets/icons/main_screen/Juice.svg',
                            'Drinks',
                          ),
                          itemAppBar(
                            'assets/icons/main_screen/Vector-13.svg',
                            'Side Items',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.17, // Adjust the width as needed
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search Products ...',
                          hintStyle: TextStyle(
                            // color: Colors.grey,
                            color: Colors.black,
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          suffixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
