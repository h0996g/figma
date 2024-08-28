import 'package:figma/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

// CustomAppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.mediaWidth,
    required this.mediaHeight,
  });
  final double mediaWidth;
  final double mediaHeight;
  final MainController controller = Get.put(MainController());

  @override
  Size get preferredSize => Size.fromHeight(
        (mediaHeight * 0.11),
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
              width: mediaWidth,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center, // Center the Row
                children: [
                  _buildItemAppBar(0, 'assets/icons/main_screen/Vector-9.svg',
                      'Categories', fontSize, mediaWidth),
                  _buildItemAppBar(1, 'assets/icons/main_screen/Vector-10.svg',
                      'Food', fontSize, mediaWidth),
                  _buildItemAppBar(2, 'assets/icons/main_screen/Vector-11.svg',
                      'Favourites', fontSize, mediaWidth),
                  _buildItemAppBar(3, 'assets/icons/main_screen/Juice.svg',
                      'Drinks', fontSize, mediaWidth),
                  _buildItemAppBar(4, 'assets/icons/main_screen/Vector-13.svg',
                      'Side Items', fontSize, mediaWidth),
                  const Spacer(),
                  SizedBox(
                    width: mediaWidth * 0.25,
                    height: mediaHeight * 0.06,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        labelText: 'Search Products ...',
                        // hintText: 'Search Products ...',
                        labelStyle: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: mediaHeight * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                        isCollapsed: true,
                        // hintStyle: TextStyle(
                        //   color: Colors.black.withOpacity(0.8),
                        //   fontSize: mediaHeight * 0.02,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        suffixIcon: Icon(
                          Icons.search,
                          size: mediaHeight * 0.04,
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
        padding: EdgeInsets.symmetric(vertical: mediaHeight * 0.01),
        child: GestureDetector(
          onTap: () => controller.changeIndex(index),
          child: Container(
            width: mediaWidth * 0.09,
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
                  width: mediaWidth * 0.4,
                  height: mediaHeight * 0.035,
                ),
                SizedBox(height: mediaHeight * 0.005),
                FittedBox(
                  child: Text(
                    label,
                    style: TextStyle(
                        color: controller.currentIndexBarBig == index
                            ? Colors.orange
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize * 0.7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
