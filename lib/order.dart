import 'package:figma/components/components.dart';
import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // sizeSmallScreenWidth = MediaQuery.of(context).size.width * 0.3;
    // sizeSmallScreenHeight = MediaQuery.of(context).size.height;

    // print(sizeSmallScreenWidth);
    return Row(
      children: [
        // This Container will take 1/4 of the screen width

        // This Expanded will take the remaining space
        const Expanded(
          child: MainContent(),
        ),
        SizedBox(
          width: Get.width * 0.3,
          child: smallScreen(Get.width * 0.3, Get.height),
        ),
      ],
    );
  }

  Widget smallScreen(
      double sizeSmallScreenWidth, double sizeSmallScreenHeight) {
    return Row(
      children: [
        Expanded(
          // flex: 8,
          child: MiniScreen(
            sizeSmallScreenWidth: sizeSmallScreenWidth,
            sizeSmallScreenHeight: sizeSmallScreenHeight,
          ),
        ),
        navigationBarSmallScreen(),
      ],
    );
  }

  Container navigationBarSmallScreen() {
    return Container(
      color: Colors.white,
      width: (Get.width * 0.3) * 0.088,
      // Removed fixed width, as it is now defined in the parent Row
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: SizedBox(
              width: 40,
              child: ListView(
                children: [
                  // SvgPicture.asset(
                  //     'assets/icons/L - right side menu button.svg'),

                  // SvgPicture.asset('assets/icons/Vector.svg'),
                  svgIconNavigationBar(
                      path: 'assets/icons/L - right side menu button1.svg'),
                  svgIconNavigationBar(path: 'assets/icons/Vector.svg'),
                  svgIconNavigationBar(path: 'assets/icons/Location.svg'),
                  svgIconNavigationBar(path: 'assets/icons/clock1.svg'),
                  svgIconNavigationBar(path: 'assets/icons/percentage.svg'),
                  svgIconNavigationBar(path: 'assets/icons/Users.svg'),
                  svgIconNavigationBar(path: 'assets/icons/plate.svg'),
                  svgIconNavigationBar(path: 'assets/icons/cooking.svg'),
                  svgIconNavigationBar(path: 'assets/icons/edit.svg'),
                  svgIconNavigationBar(path: 'assets/icons/print.svg'),
                  svgIconNavigationBar(path: 'assets/icons/share.svg'),
                ],
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 5),

              Container(
                color: const Color(0xffF2F2F2),
                height: 35,
                width: 35,
                // color: Colors.grey,
                child: MaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Text('1',
                        style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: const Color(0xffF2F2F2),
                height: 35,
                width: 35,
                // color: Colors.grey,
                child: MaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Text('2',
                        style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(height: 5),

              Container(
                color: const Color(0xffF2F2F2),
                height: 35,
                width: 35,
                // color: Colors.grey,
                child: MaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Text('3',
                        style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ),
              ),

              svgIconNavigationBar(
                  path: 'assets/icons/L - right side menu button-1.svg'),
              svgIconNavigationBar(path: 'assets/icons/Lock.svg'),
              svgIconNavigationBar(path: 'assets/icons/wifi.svg'),

              // SvgPicture.asset('assets/icons/L - right side menu button-1.svg'),
              // SvgPicture.asset('assets/icons/Lock.svg'),
              // SvgPicture.asset('assets/icons/wifi.svg'),
            ],
          ),
        ],
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      navigationBarMainScreen(),
      const Expanded(
        child: const MainScreen(),
      ),
    ]);
  }

  Container navigationBarMainScreen() {
    return Container(
      color: Colors.white,
      width: (Get.width * 0.7) * 0.1,
      // Removed fixed width, as it is now defined in the parent Row
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: SizedBox(
              // width: 80,
              child: ListView(
                children: [
                  svgIconNavigationBar(
                      path: 'assets/icons/main_screen/Frame 17.svg',
                      fit: BoxFit.cover,
                      height: Get.height * 0.12),
                  const SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        svgIconNavigationBar2(
                            path: 'assets/icons/main_screen/Vector.svg',
                            color: Colors.black,
                            width: iconSize * 0.8,
                            height: iconSize * 0.8,
                            // iconSize: 40,
                            fit: BoxFit.cover),
                        Text('Orders',
                            style: TextStyle(
                                fontSize: fontSize * 0.8,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        svgIconNavigationBar2(
                            path: 'assets/icons/main_screen/Vector-1.svg',
                            color: Colors.black,
                            width: iconSize * 0.8,
                            height: iconSize * 0.8,
                            // iconSize: 40,
                            fit: BoxFit.cover),
                        Text('Tables',
                            style: TextStyle(
                                fontSize: fontSize * 0.8,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        svgIconNavigationBar2(
                            path: 'assets/icons/main_screen/Vector-2.svg',
                            color: Colors.black,
                            width: iconSize * 0.8,
                            height: iconSize * 0.8,
                            // iconSize: 40,
                            fit: BoxFit.cover),
                        Text('Call Center',
                            style: TextStyle(
                                fontSize: fontSize * 0.8,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        svgIconNavigationBar2(
                          path: 'assets/icons/main_screen/Vector-3.svg',
                          color: Colors.black,
                          width: iconSize * 0.8,
                          height: iconSize * 0.8,
                          // iconSize: 40,
                          // fit: BoxFit.cover
                        ),
                        Text('Delivery',
                            style: TextStyle(
                                fontSize: fontSize * 0.8,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                  ),

                  // svgIconNavigationBar(path: 'assets/icons/Vector.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/Location.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/clock1.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/percentage.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/Users.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/plate.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/cooking.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/edit.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/print.svg'),
                  // svgIconNavigationBar(path: 'assets/icons/share.svg'),

                  // IconButton(
                  //     icon: const Icon(Icons.settings), onPressed: () {}),
                  // SvgPicture.asset('assets/icons/clock1.svg'),
                  // SvgPicture.asset('assets/icons/percentage.svg'),
                  // SvgPicture.asset('assets/icons/Users.svg'),
                  // SvgPicture.asset('assets/icons/plate.svg'),
                  // SvgPicture.asset('assets/icons/cooking.svg'),
                  // SvgPicture.asset('assets/icons/edit.svg'),
                  // SvgPicture.asset('assets/icons/print.svg'),
                  // SvgPicture.asset('assets/icons/share.svg'),
                ],
              ),
            ),
          ),
          Column(
            children: [
              MaterialButton(
                onPressed: () {},
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector4.svg',
                        color: Colors.black,
                        width: iconSize * 0.8,
                        height: iconSize * 0.8,
                        // iconSize: 40,
                        fit: BoxFit.cover),
                    Text('Settings',
                        style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              MaterialButton(
                onPressed: () {},
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector-5.svg',
                        color: Colors.black,
                        width: iconSize * 0.8,
                        height: iconSize * 0.8,
                        // iconSize: 40,
                        fit: BoxFit.cover),
                    Text('Quick End',
                        style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              MaterialButton(
                onPressed: () {},
                child: Column(
                  children: [
                    svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector-6.svg',
                        color: Colors.black,
                        width: iconSize * 0.8,
                        height: iconSize * 0.8,
                        // iconSize: 40,
                        fit: BoxFit.cover),
                    Text('Shift Off',
                        style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              MaterialButton(
                onPressed: () {},
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    svgIconNavigationBar2(
                        path: 'assets/icons/main_screen/Vector-7.svg',
                        color: Colors.black,
                        width: iconSize * 0.8,
                        height: iconSize * 0.8,
                        // iconSize: 40,
                        fit: BoxFit.cover),
                    Text('Power Off',
                        style: TextStyle(
                            fontSize: fontSize * 0.8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              // SvgPicture.asset('assets/icons/L - right side menu button-1.svg'),
              // SvgPicture.asset('assets/icons/Lock.svg'),
              // SvgPicture.asset('assets/icons/wifi.svg'),
            ],
          ),
        ],
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}

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

  Widget bottomNavBar(context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
      ),
      child: BottomNavigationBar(
        // selectedItemColor: Colors.amber[800],
        showSelectedLabels: false, // Hides the label for selected items
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/mini_screen/Vector-5.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/mini_screen/Vector-6.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/mini_screen/Vector-7.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/mini_screen/Vector-8.svg',
              color: Colors.grey.shade400,
            ),
            label: '',
          ),
        ],
        // selectedItemColor: Colors.amber[800],
      ),
    );
  }

  Widget _buildTotalPriceWidget(double screenWidth, double fontSize) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  // SizedBox(height: 2),
                  Text('2000',
                      style: TextStyle(
                          fontSize: fontSize, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Service',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  // SizedBox(height: 2),
                  Text('175',
                      style: TextStyle(
                          fontSize: fontSize, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Delivery',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  // SizedBox(height: 2),
                  Text('175',
                      style: TextStyle(
                          fontSize: fontSize, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Val',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  // SizedBox(height: 2),
                  Text('200',
                      style: TextStyle(
                          fontSize: fontSize, fontWeight: FontWeight.w600)),
                ],
              ),
            )
          ],
        ),
        Divider(
          color: Colors.grey.shade200,
        ),
        Container(
          // width: screenWidth,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          // color: Colors.grey[200],
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    'Not paid',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize * 0.8,
                        // fontSize: fontSize,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
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
                        '10%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize * 0.8,
                            // fontSize: fontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      '2800', // Replace with your actual total price
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400],
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  const Text(
                    '2800', // Replace with your actual total price
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildResponsiveRow() {
    // Calculate responsive sizes
    // double iconSize = screenSizeWidthOnly * 0.07;
    // double containerHeight = sizeSmallScreenHeight * 0.09;
    // double fontSize = screenSizeWidthOnly * 0.04;

    return Row(
      children: [
        Expanded(flex: 1, child: _buildIconContainer()),
        SizedBox(width: screenSizeWidthOnly * 0.01),
        Expanded(
            flex: 2,
            child: _buildInfoContainer(
                containerHeight, fontSize, 'C10', '#464646')),
        SizedBox(width: screenSizeWidthOnly * 0.01),
        Expanded(
            flex: 4, child: _buildDateTimeContainer(containerHeight, fontSize)),
        SizedBox(width: screenSizeWidthOnly * 0.01),
        Expanded(
            flex: 1, child: _buildDeleteContainer(containerHeight, iconSize)),
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
              Text('Today', style: TextStyle(fontSize: fontSize)),
              Text('08:16',
                  style: TextStyle(fontSize: fontSize),
                  textAlign: TextAlign.end),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ready on', style: TextStyle(fontSize: fontSize * 0.8)),
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
                        fontSize: fontSize * 0.8,
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
    double containerHeight = screenSizeHeight * 0.09;
    double fontSize = screenSizeWidth * 0.04;

    return Row(
      children: [
        Expanded(
            flex: 1,
            child: _buildIconContainer2(containerHeight, iconSize, fontSize)),
        SizedBox(width: screenSizeWidth * 0.01),
        Expanded(
            flex: 7,
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
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Abdessamed bouazza',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(155, 81, 224, 1)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-2.svg',
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-3.svg',
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/mini_screen/Vector-4.svg',
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
                          fontSize: fontSize * 0.8,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey)),
                  const SizedBox(width: 5),
                  Text('Abdesssmed bouazza',
                      style: TextStyle(
                          fontSize: fontSize * 0.8,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800])),
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
    double containerHeight = screenSizeHeight * 0.09;
    double fontSize = screenSizeWidth * 0.04;

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
              height: height * 0.7,
              width: height,
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
                      Text(subtitle),
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

class LabeledBorder extends StatelessWidget {
  final String rightLabel;
  final String bottomLabel;
  final Widget child;
  final double height;
  final double width;

  const LabeledBorder({
    super.key,
    required this.rightLabel,
    required this.bottomLabel,
    required this.child,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          width: width, // Adjust as needed
          height: height, // Adjust as needed
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orange,
            ),
            borderRadius: BorderRadius.circular(5),
            // borderRadius:
          ),
          child: Center(child: child),
        ),

        // Right label
        Positioned(
          right: -9,
          top: 0,
          bottom: 0,
          child: Center(
            child: RotatedBox(
              quarterTurns: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Text(
                  rightLabel,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
        ),
        // Bottom label
        Positioned(
          left: 0,
          right: 0,
          bottom: -9,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Text(
                bottomLabel,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
