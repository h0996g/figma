import 'package:flutter/material.dart';
import 'package:figma/components/size.dart';
import 'package:flutter/widgets.dart';

class TotalPrix extends StatelessWidget {
  const TotalPrix({super.key});

  @override
  Widget build(BuildContext context) {
    double priceNavigationBarHight =
        MediaQueryValues(context).priceNavigationBarHight;
    double screenSizeWidthOnly1 = MediaQueryValues(context).onlyminiScreenWidth;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Divider(color: Colors.grey.shade200, thickness: 1, height: 0),
        SizedBox(
          height: priceNavigationBarHight * 0.5,
          child: Row(
            children: [
              _buildPriceColumn(
                  'Subtotal', '2000', screenSizeWidthOnly1 * 0.035),
              _buildPriceColumn('Service', '175', screenSizeWidthOnly1 * 0.035),
              _buildPriceColumn(
                  'Delivery', '175', screenSizeWidthOnly1 * 0.035),
              _buildPriceColumn('Val', '200', screenSizeWidthOnly1 * 0.035),
            ],
          ),
        ),
        // Divider(color: Colors.grey.shade200, thickness: 1, height: 0),
        Container(
          height: priceNavigationBarHight * 0.5,
          // color: Colors.red,
          padding:
              EdgeInsets.symmetric(horizontal: screenSizeWidthOnly1 * 0.05),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildChip(
                    text: 'Not paid',
                    color: Colors.red,
                    fontSize: priceNavigationBarHight * 0.24),
                Row(
                  children: [
                    _buildChip(
                        text: '10%',
                        color: Colors.red,
                        fontSize: priceNavigationBarHight * 0.24),
                    SizedBox(width: screenSizeWidthOnly1 * 0.03),
                    _buildText(
                        text: '2800',
                        fontSize: priceNavigationBarHight * 0.35,
                        isStrikeThrough: true),
                    SizedBox(width: screenSizeWidthOnly1 * 0.03),
                    _buildText(
                        text: '2800', fontSize: priceNavigationBarHight * 0.35),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceColumn(String label, String price, double fontSize) {
    return Expanded(
      child: Column(
        children: [
          Text(label,
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: fontSize * 0.8,
                  fontWeight: FontWeight.w600)),
          Text(price,
              style:
                  TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  // Widget _buildStatusChip(String text, Color color, double fontSize) {
  //   return _buildChip(text, color, fontSize);
  // }

  // Widget _buildPriceText(String price, double fontSize,
  //     {bool isStrikeThrough = false}) {
  //   return _buildText(price, fontSize, isStrikeThrough: isStrikeThrough);
  // }

  Widget _buildChip(
      {required String text, required Color color, required double fontSize}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: fontSize * 0.5),

      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
      height: fontSize + fontSize * 0.2,
      // width: fontSize * 2.5,
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize * 0.8,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildText(
      {required String text,
      required double fontSize,
      bool isStrikeThrough = false}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: isStrikeThrough ? Colors.grey[400] : null,
        decoration: isStrikeThrough ? TextDecoration.lineThrough : null,
      ),
    );
  }
}
