import 'package:figma/components/components.dart';
import 'package:figma/widget/big_screen/grid_view.dart';
import 'package:figma/widget/big_screen/toggel_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.white,
              height: Get.height * 0.055,
              child: const MyToggleButtonWidget(),
            ),
            const SizedBox(height: 5),
            Expanded(child: ProductGridView()),
          ],
        ),
      ),
    );
  }
}
