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
    double fontSize = MediaQuery.of(context).size.height * 0.3 * 0.08;

    return PreferredSize(
      preferredSize: preferredSize,
      child: Material(
        elevation: 1,
        child: Container(
          color: Colors.white,
          child: Center(
            child: SizedBox(
              width: mediaWidth * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the Row
                children: [
                  Expanded(
                    flex: 2, // Take 2/3 of the space
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
                  Expanded(
                    flex: 1, // Take 1/3 of the space
                    child: SizedBox(
                      width: mediaWidth * 0.15,
                      height: mediaWidth * 0.15 * 0.3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search Products ...',
                          hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
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
                  ),
                ],
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
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
        child: GestureDetector(
          onTap: () => controller.changeIndex(index),
          child: Container(
            width: mediaWidth * 0.75 / 10,
            decoration: BoxDecoration(
              color: controller.currentIndexBarBig == index
                  ? Colors.orange.withOpacity(0.1)
                  : Colors.transparent,
              borderRadius: controller.currentIndexBarBig == index
                  ? BorderRadius.circular(8)
                  : BorderRadius.zero,
              border: Border.all(
                color: controller.currentIndexBarBig == index
                    ? Colors.orange
                    : Colors.transparent,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  iconPath,
                  color: controller.currentIndexBarBig == index
                      ? Colors.orange
                      : Colors.black,
                  width: mediaWidth * 0.75 / 10 * 0.5,
                  height: fontSize * 1.5,
                ),
                const SizedBox(height: 5),
                Text(
                  label,
                  style: TextStyle(
                      color: controller.currentIndexBarBig == index
                          ? Colors.orange
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize * 0.8),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
