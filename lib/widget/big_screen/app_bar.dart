import 'package:figma/const_size.dart';
import 'package:figma/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

// CustomAppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, required this.mediaWidth});
  final double mediaWidth;
  final MainController controller = Get.put(MainController());

  @override
  Size get preferredSize => Size.fromHeight(
        (mediaWidth * 0.75) * 0.07,
      );

  @override
  Widget build(BuildContext context) {
    // double mediawidth = MediaQuery.of(context).size.width;
    double screenSizeWidthOnly1 = MediaQuery.of(context).size.width * 0.3 - 40;

    double iconSize = screenSizeWidthOnly1 * 0.07;
    double containerHeight = MediaQuery.of(context).size.height * 0.09 * 0.8;
    double fontSize = screenSizeWidthOnly1 * 0.04;

    return PreferredSize(
      preferredSize: preferredSize,
      child: Material(
        elevation: 1,
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Center(
              child: SizedBox(
                width: mediaWidth * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildItemAppBar(
                              0,
                              'assets/icons/main_screen/Vector-9.svg',
                              'Categories',
                              fontSize,
                              mediaWidth),
                          _buildItemAppBar(
                              1,
                              'assets/icons/main_screen/Vector-10.svg',
                              'Food',
                              fontSize,
                              mediaWidth),
                          _buildItemAppBar(
                              2,
                              'assets/icons/main_screen/Vector-11.svg',
                              'Favourites',
                              fontSize,
                              mediaWidth),
                          _buildItemAppBar(
                              3,
                              'assets/icons/main_screen/Juice.svg',
                              'Drinks',
                              fontSize,
                              mediaWidth),
                          _buildItemAppBar(
                              4,
                              'assets/icons/main_screen/Vector-13.svg',
                              'Side Items',
                              fontSize,
                              mediaWidth),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.17,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search Products ...',
                          hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 12, // Adjust this value as needed
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

  Widget _buildItemAppBar(int index, String iconPath, String label,
      double fontSize, double mediaWidth) {
    return GetX<MainController>(
      builder: (controller) => MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () => controller.changeIndex(index),
        child: Container(
          width: mediaWidth * 0.75 / 10,
          // height: 20,
          // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            color: controller.currentIndexBarBig == index
                ? Colors.orange.withOpacity(
                    0.1) // Add background color for the selected item
                : Colors.transparent,
            borderRadius: controller.currentIndexBarBig == index
                ? BorderRadius.circular(
                    8) // Add rounded corners for the selected item
                : BorderRadius.zero,
            border: Border.all(
              color: controller.currentIndexBarBig == index
                  ? Colors.orange // Border color for the selected item
                  : Colors.transparent,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                color: controller.currentIndexBarBig == index
                    ? Colors.orange // Changed to orange
                    : Colors.black, // Change non-selected icons to black
                width: 25,
                height: 25,
              ),
              SizedBox(height: 5), // Add spacing between the icon and the label
              Text(
                label,
                style: TextStyle(
                    color: controller.currentIndexBarBig == index
                        ? Colors.orange // Changed to orange
                        : Colors.black, // Change non-selected text to black
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize * 0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
