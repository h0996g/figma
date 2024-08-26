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
    double mediaHeight = MediaQuery.of(context).size.height;
    double screenSizeWidthOnly1 = MediaQuery.of(context).size.width * 0.3 - 40;

    double iconSize = screenSizeWidthOnly1 * 0.07;
    double containerHeight = MediaQuery.of(context).size.height * 0.09 * 0.8;
    double fontSize = screenSizeWidthOnly1 * 0.04;

    return Center(
      child: Container(
        height: mediaHeight * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCustomToggleButton('Daily Breakfast', 0, fontSize),
              buildCustomToggleButton('Special Offers', 1, fontSize),
              buildCustomToggleButton('Soup And Appetizers', 2, fontSize),
              buildCustomToggleButton('Salad', 3, fontSize),
              buildCustomToggleButton('Grills Meat By Kilo', 4, fontSize),
              buildCustomToggleButton('Grills Meat Meals', 5, fontSize),
              buildCustomToggleButton('Smoked Meat Meals', 6, fontSize),
              buildCustomToggleButton('Grilled Chicken Meals', 7, fontSize),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomToggleButton(String title, int index, double fontSize) {
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
