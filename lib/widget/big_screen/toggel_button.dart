import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyToggleButtonWidget extends StatefulWidget {
  const MyToggleButtonWidget({super.key});

  @override
  _MyToggleButtonWidgetState createState() => _MyToggleButtonWidgetState();
}

class _MyToggleButtonWidgetState extends State<MyToggleButtonWidget> {
  int selectedIndex = 0; // Track the selected index

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Get.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCustomToggleButton('Daily Breakfast', 0),
              buildCustomToggleButton('Special Offers', 1),
              buildCustomToggleButton('Soup And Appetizers', 2),
              buildCustomToggleButton('Salad', 3),
              buildCustomToggleButton('Grills Meat By Kilo', 4),
              buildCustomToggleButton('Grills Meat Meals', 5),
              buildCustomToggleButton('Smoked Meat Meals', 6),
              buildCustomToggleButton('Grilled Chicken Meals', 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomToggleButton(String title, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: fontSize * 0.9,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
