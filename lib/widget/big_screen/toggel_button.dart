import 'package:flutter/material.dart';
import 'package:figma/components/size.dart';

class MyToggleButtonWidget extends StatefulWidget {
  const MyToggleButtonWidget({super.key});

  @override
  _MyToggleButtonWidgetState createState() => _MyToggleButtonWidgetState();
}

class _MyToggleButtonWidgetState extends State<MyToggleButtonWidget> {
  int selectedIndex = 0; // Track the selected index

  @override
  Widget build(BuildContext context) {
    // double mediaHeight = MediaQuery.of(context).size.height;
    double bigScreenHeightOnly = MediaQueryValues(context).bigScreenHeightOnly;
    double screenSizeWidthOnly1 = MediaQueryValues(context).bigScreenWidthOnly;

    double fontSize = screenSizeWidthOnly1 * 0.02;

    return Center(
      child: Container(
        height: bigScreenHeightOnly * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCustomToggleButton(
                title: 'Daily Breakfast',
                index: 0,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            // buildCustomToggleButton('Special Offers', 1, fontSize),
            buildCustomToggleButton(
                title: 'special Offers',
                index: 1,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            buildCustomToggleButton(
                title: 'Soup And Appetizers',
                index: 2,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            buildCustomToggleButton(
                title: 'Salad',
                index: 3,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            buildCustomToggleButton(
                title: 'Grills Meat By Kilo',
                index: 4,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            buildCustomToggleButton(
                title: 'Grills Meat Meals',
                index: 5,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            buildCustomToggleButton(
                title: 'Smoked Meat Meals',
                index: 6,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            buildCustomToggleButton(
                title: 'Grilled Chicken Meals',
                index: 7,
                fontSize: fontSize,
                mediaHeight: bigScreenHeightOnly * 0.06,
                mediaWidth: screenSizeWidthOnly1),
            // buildCustomToggleButton('Soup And Appetizers', 2, fontSize),
            // buildCustomToggleButton('Salad', 3, fontSize),
            // buildCustomToggleButton('Grills Meat By Kilo', 4, fontSize),
            // buildCustomToggleButton('Grills Meat Meals', 5, fontSize),
            // buildCustomToggleButton('Smoked Meat Meals', 6, fontSize),
            // buildCustomToggleButton('Grilled Chicken Meals', 7, fontSize),
          ],
        ),
      ),
    );
  }

  Widget buildCustomToggleButton(
      {required String title,
      required int index,
      required double fontSize,
      required double mediaWidth,
      required double mediaHeight}) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: mediaWidth * 0.00499, vertical: mediaHeight * 0.1),
          decoration: BoxDecoration(
            color: isSelected ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(3),
          ),
          child: FittedBox(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: fontSize * 0.68,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
