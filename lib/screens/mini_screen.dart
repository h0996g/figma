import 'package:figma/components/mini_screen/components.dart';
import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MiniScreen extends StatelessWidget {
  final double sizeSmallScreenWidth;
  final double sizeSmallScreenHeight;
  const MiniScreen(
      {super.key,
      required this.sizeSmallScreenWidth,
      required this.sizeSmallScreenHeight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.white,
              elevation: 0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildResponsiveRow(),
                ],
              ),
            ),

            Card(
              color: Colors.white,
              elevation: 0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildResponsiveRow2(
                      screenSizeWidthOnly, sizeSmallScreenHeight),
                ],
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '3.750',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: false,
                    price: '2800',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                    oldPrice: '2800',
                    discount: '20%',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                  ),
                  const SizedBox(height: 5),
                  _buildResponsiveRow3(
                    screenSizeWidth: screenSizeWidthOnly,
                    screenSizeHeight: sizeSmallScreenHeight,
                    quantity: '1',
                    title:
                        'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    subtitle: 'Italien - Stor',
                    isPcs: true,
                    price: '2800',
                  ),
                ],
              ),
            ),
            // SvgPicture.asset(
            //   'assets/icons/clock.svg',
            //   color: Color.fromARGB(32, 33, 46, 1),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTotalPriceWidget(
              screenSizeWidthOnly, (screenSizeWidthOnly) * 0.04),
          bottomNavBar(context),
        ],
      ),
    );
  }

  Widget bottomNavBar(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.09, // Set the height to your desired value
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          _buildNavItem('assets/icons/mini_screen/Vector-5.svg'),
          _buildNavItem('assets/icons/mini_screen/Vector-6.svg'),
          _buildNavItem('assets/icons/mini_screen/Vector-7.svg'),
          _buildNavItem('assets/icons/mini_screen/Vector-8.svg',
              color: Colors.grey.shade400),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String assetPath, {Color? color}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        assetPath,
        color: color,
        width: 15,
        height: 15,
      ),
      label: '',
    );
  }

  Widget _buildTotalPriceWidget(double screenWidth, double fontSize) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(color: Colors.grey.shade200, thickness: 1, height: 0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            children: [
              _buildPriceColumn(
                  'Subtotal', '2000', screenSizeWidthOnly * 0.031),
              _buildPriceColumn('Service', '175', screenSizeWidthOnly * 0.031),
              _buildPriceColumn('Delivery', '175', screenSizeWidthOnly * 0.031),
              _buildPriceColumn('Val', '200', screenSizeWidthOnly * 0.031),
            ],
          ),
        ),
        Divider(color: Colors.grey.shade200, thickness: 1, height: 0),
        Container(
          // color: Colors.red,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildStatusChip('Not paid', Colors.red, fontSize * 0.8),
                Row(
                  children: [
                    _buildStatusChip('10%', Colors.red, fontSize * 0.8),
                    _buildPriceText('2800', fontSize, isStrikeThrough: true),
                    _buildPriceText('2800', fontSize),
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
              style: TextStyle(
                  fontSize: fontSize * 0.8, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildStatusChip(String text, Color color, double fontSize) {
    return _buildChip(text, color, fontSize);
  }

  Widget _buildPriceText(String price, double fontSize,
      {bool isStrikeThrough = false}) {
    return _buildText(price, fontSize, isStrikeThrough: isStrikeThrough);
  }

  Widget _buildChip(String text, Color color, double fontSize) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Text(text,
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildText(String text, double fontSize,
      {bool isStrikeThrough = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: isStrikeThrough ? Colors.grey[400] : null,
          decoration: isStrikeThrough ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }

  Widget _buildResponsiveRow() {
    return Row(
      children: [
        Expanded(flex: 5, child: _buildIconContainer()),
        SizedBox(width: screenSizeWidthOnly * 0.01),
        Expanded(
            flex: 7,
            child: _buildInfoContainer(
                containerHeight, fontSize, 'C10', '#464646')),
        SizedBox(width: screenSizeWidthOnly * 0.01),
        Expanded(
            flex: 16,
            child: _buildDateTimeContainer(containerHeight, fontSize)),
        SizedBox(width: screenSizeWidthOnly * 0.01),
        Expanded(
            flex: 5, child: _buildDeleteContainer(containerHeight, iconSize)),
      ],
    );
  }

  Widget _buildIconContainer() {
    return Container(
      height: containerHeight,
      width: containerHeight,
      padding: EdgeInsets.all(containerHeight * 0.1),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.7),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: SvgPicture.asset('assets/icons/chess.svg',
              width: iconSize * 0.8, height: iconSize * 0.8)),
    );
  }

  Widget _buildInfoContainer(
      double height, double fontSize, String title, String subtitle) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: height * 0.1, vertical: height * 0.05),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.7),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize)),
          Text(subtitle, style: TextStyle(fontSize: fontSize * 0.8)),
        ],
      ),
    );
  }

  Widget _buildDateTimeContainer(double height, double fontSize) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: height * 0.1, vertical: height * 0.05),
      decoration: BoxDecoration(
        // color: Colors.grey[100]!.withOpacity(0.7),
        color: const Color.fromRGBO(245, 245, 245, 1),
        // background: rgba(245, 245, 245, 1);

        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('Today',
                  style: TextStyle(
                      fontSize: fontSize * 0.8, fontWeight: FontWeight.w600)),
              Text('08:16',
                  style: TextStyle(
                      fontSize: fontSize * 0.8,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade700),
                  textAlign: TextAlign.end),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ready on', style: TextStyle(fontSize: fontSize * 0.7)),
              SizedBox(width: height * 0.1),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(33, 150, 83, 1),
                  // background: rgba(33, 150, 83, 1);
//
                  borderRadius: BorderRadius.circular(height * 0.2),
                ),
                child: Text('50 Min',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize * 0.7,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDeleteContainer(double height, double iconSize) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.all(height * 0.1),
      decoration: BoxDecoration(
        color: Colors.red[100]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        Icons.clear,
        color: Colors.red,
        size: iconSize,
      ),
    );
  }

  Widget _buildResponsiveRow2(double screenSizeWidth, double screenSizeHeight) {
    // Calculate responsive sizes
    double iconSize = screenSizeWidth * 0.07;
    double containerHeight = screenSizeHeight * 0.09 * 0.8;
    double fontSize = screenSizeWidth * 0.03;

    return Row(
      children: [
        Expanded(
            flex: 5,
            child: _buildIconContainer2(containerHeight, iconSize, fontSize)),
        SizedBox(width: screenSizeWidth * 0.01),
        Expanded(
            flex: 28,
            child: _buildDateTimeContainer2(containerHeight, fontSize)),
        // SizedBox(width: screenSize.width * 0.01),
      ],
    );
  }

  Widget _buildIconContainer2(double height, double iconSize, double fontSize) {
    return Container(
      height: height,
      width: height,
      padding: EdgeInsets.all(height * 0.1),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.7),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Column(
        children: [
          // Icon(Icons.group, size: iconSize * 0.8),
          SvgPicture.asset(
            'assets/icons/users.svg',
            width: iconSize * 0.8,
            height: iconSize * 0.8,
          ),

          Text('4',
              style:
                  TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold)),
        ],
      )),
    );
  }

  Widget _buildDateTimeContainer2(double height, double fontSize) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          // Top purple part
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: height * 0.1, vertical: height * 0.05),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(155, 81, 224, 0.15),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/mini_screen/person1.svg',
                        width: iconSize * 0.4,
                        height: iconSize * 0.4,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Abdessamed bouazza',
                        style: TextStyle(
                            fontSize: fontSize * 0.7,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(155, 81, 224, 1)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-2.svg',
                        width: iconSize * 0.4,
                        height: iconSize * 0.4,
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-3.svg',
                        width: iconSize * 0.4,
                        height: iconSize * 0.4,
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-4.svg',
                        width: iconSize * 0.4,
                        height: iconSize * 0.4,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Bottom grey part
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: height * 0.1, vertical: height * 0.05),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Row(
                children: [
                  Text('By',
                      style: TextStyle(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey)),
                  const SizedBox(width: 5),
                  Text('Abdesssmed bouazza',
                      style: TextStyle(
                          fontSize: fontSize * 0.6,
                          fontWeight: FontWeight.w600,
                          // background: rgba(32, 33, 46, 1);

                          color: Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResponsiveRow3(
      {required double screenSizeWidth,
      required double screenSizeHeight,
      required String quantity,
      required String title,
      required String subtitle,
      required String price,
      required bool isPcs,
      String? oldPrice,
      String? discount}) {
    // Calculate responsive sizes
    double containerHeight = screenSizeHeight * 0.06;
    double fontSize = screenSizeWidth * 0.031;

    return Row(
      children: [
        Expanded(
            child: _buildDateTimeContainer3(
          containerHeight,
          fontSize,
          quantity,
          title,
          subtitle,
          price,
          isPcs,
          oldPrice,
          discount,
        )),
      ],
    );
  }

  Widget _buildDateTimeContainer3(
      double height,
      double fontSize,
      String quantity,
      String title,
      String subtitle,
      String price,
      bool isPcs,
      String? oldPrice,
      String? discount) {
    return Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100]!.withOpacity(0.7),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            LabeledBorder(
              bottomLabel: isPcs ? 'pcs' : 'kg',
              rightLabel: 'X',
              height: height * 0.7 + 1,
              width: height + 10,
              child: Text(quantity,
                  style: TextStyle(
                      fontSize: fontSize, fontWeight: FontWeight.bold)),
            ),
            SizedBox(width: height * 0.2),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Changed this
                crossAxisAlignment: CrossAxisAlignment.center, // Added this
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(subtitle,
                          style: TextStyle(
                              fontSize: fontSize * 0.8,
                              color: Colors.grey.shade700)),
                      Row(
                        children: [
                          if (discount != null)
                            // Text(
                            //   discount,
                            //   style: TextStyle(
                            //       fontSize: fontSize * 0.8,
                            //       color: Colors.red,
                            //       fontWeight: FontWeight.bold),
                            // ),

                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  discount,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: fontSize * 0.8,
                                      // fontSize: fontSize,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          if (oldPrice != null)
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(oldPrice,
                                  style: TextStyle(
                                      fontSize: fontSize * 0.8,
                                      decoration: TextDecoration.lineThrough)),
                            ),
                          Text(price,
                              style: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}