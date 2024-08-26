import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

MaterialButton svgIconNavigationBar(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path,
    BoxFit fit = BoxFit.contain}) {
  return MaterialButton(
    onPressed: () {},
    child: SvgPicture.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    ),
  );
}

SvgPicture svgIconNavigationBar2(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path,
    BoxFit fit = BoxFit.contain}) {
  return SvgPicture.asset(
    path,
    height: height,
    width: width,
    fit: fit,
    color: color,
  );
}

Row svgIconNavigationBar3(
    {double? width,
    double? height,
    Color color = Colors.grey,
    required String path1,
    required String path2,
    BoxFit fit = BoxFit.contain}) {
  return Row(
    children: [
      SvgPicture.asset(
        path1,
        height: height,
        width: width,
        fit: fit,
        color: color,
      ),
      SvgPicture.asset(
        path2,
        height: height,
        width: width,
        fit: fit,
        color: color,
      ),
    ],
  );
}

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
                          _buildButton(
                            'assets/icons/main_screen/Vector-9.svg',
                            'Categories',
                          ),
                          _buildButton(
                            'assets/icons/main_screen/Vector-10.svg',
                            'Food',
                          ),
                          _buildButton(
                            'assets/icons/main_screen/Vector-11.svg',
                            'Favourites',
                          ),
                          _buildButton(
                            'assets/icons/main_screen/Juice.svg',
                            'Drinks',
                          ),
                          _buildButton(
                            'assets/icons/main_screen/Vector-13.svg',
                            'Side Items',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.17, // Adjust the width as needed
                      child: TextField(
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

  Widget _buildButton(String iconPath, String label) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          svgIconNavigationBar2(
            path: iconPath,
            color: Colors.black,
            width: iconSize * 0.8,
            height: iconSize * 0.8,
            fit: BoxFit.cover,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: fontSize * 0.8,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
