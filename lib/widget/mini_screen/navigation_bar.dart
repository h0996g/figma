import 'package:figma/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:figma/components/size.dart';

class ButtonNavigationBarMiniScreen extends StatelessWidget {
  const ButtonNavigationBarMiniScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double toggelnavigationBar =
        MediaQueryValues(context).toggelnavigationBarHight;
    double screenSizeWidthOnly1 = MediaQueryValues(context).onlyminiScreenWidth;
    final MainController navController = Get.put(MainController());

    return GetX<MainController>(
      builder: (DisposableInterface controller) {
        return Container(
          height: toggelnavigationBar,
          width: screenSizeWidthOnly1,
          color: Colors.red,
          // Set the height to your desired value
          child: BottomNavigationBar(
            selectedFontSize: 0,
            currentIndex: navController.selectedIndex.value,
            onTap: (index) {
              navController.changeIndex2(index);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: [
              _buildNavItem(
                'assets/icons/mini_screen/Vector-5.svg',
                isSelected: navController.selectedIndex.value == 0,
              ),
              _buildNavItem(
                'assets/icons/mini_screen/Vector-6.svg',
                isSelected: navController.selectedIndex.value == 1,
              ),
              _buildNavItem(
                'assets/icons/mini_screen/Vector-7.svg',
                isSelected: navController.selectedIndex.value == 2,
              ),
              _buildNavItem(
                'assets/icons/mini_screen/Vector-8.svg',
                isSelected: navController.selectedIndex.value == 3,
              ),
            ],
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavItem(String assetPath,
      {bool isSelected = false}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        assetPath,
        color: isSelected ? Colors.orange : Colors.grey.shade400,
        width: 10,
        height: 10,
      ),
      label: '',
    );
  }
}
