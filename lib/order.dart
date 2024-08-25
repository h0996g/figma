import 'package:flutter/material.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeSmallScreenWidth = MediaQuery.of(context).size.width * 0.3;
    final double sizeSmallScreenHeight = MediaQuery.of(context).size.height;
    print(sizeSmallScreenWidth);
    return Row(
      children: [
        // This Container will take 1/4 of the screen width

        // This Expanded will take the remaining space
        const Expanded(
          child: MainContent(),
        ),
        SizedBox(
          width: sizeSmallScreenWidth,
          child: smallScreen(sizeSmallScreenWidth, sizeSmallScreenHeight),
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
        navigationBar(),
      ],
    );
  }

  Container navigationBar() {
    return Container(
      color: Colors.white,
      // Removed fixed width, as it is now defined in the parent Row
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: 40,
              child: ListView(
                children: [
                  IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.payment), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.receipt), onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.settings), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.payment), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.receipt), onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.settings), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.payment), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.receipt), onPressed: () {}),
                ],
              ),
            ),
          ),
          Column(
            children: [
              IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
              IconButton(icon: const Icon(Icons.home), onPressed: () {}),
              IconButton(icon: const Icon(Icons.payment), onPressed: () {}),
              IconButton(icon: const Icon(Icons.receipt), onPressed: () {}),
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [],
          ),
        ),
      ),
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
                  _buildResponsiveRow(
                      sizeSmallScreenWidth - 40, sizeSmallScreenHeight),
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
                      sizeSmallScreenWidth - 40, sizeSmallScreenHeight),
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
                      sizeSmallScreenWidth - 40, sizeSmallScreenHeight),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(context),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios_new),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.padding),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off_csred_outlined),
            label: '',
          ),
        ],
        // selectedItemColor: Colors.amber[800],
      ),
    );
  }

  Widget _buildResponsiveRow(double screenSizeWidth, double screenSizeHeight) {
    // Calculate responsive sizes
    double iconSize = screenSizeWidth * 0.07;
    double containerHeight = screenSizeHeight * 0.09;
    double fontSize = screenSizeWidth * 0.04;

    return Row(
      children: [
        Expanded(
            flex: 1, child: _buildIconContainer(containerHeight, iconSize)),
        SizedBox(width: screenSizeWidth * 0.01),
        Expanded(
            flex: 2,
            child: _buildInfoContainer(
                containerHeight, fontSize, 'C10', '#464646')),
        SizedBox(width: screenSizeWidth * 0.01),
        Expanded(
            flex: 4, child: _buildDateTimeContainer(containerHeight, fontSize)),
        SizedBox(width: screenSizeWidth * 0.01),
        Expanded(
            flex: 1, child: _buildDeleteContainer(containerHeight, iconSize)),
      ],
    );
  }

  Widget _buildIconContainer(double height, double iconSize) {
    return Container(
      height: height,
      width: height,
      padding: EdgeInsets.all(height * 0.1),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.7),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Icon(Icons.table_restaurant, size: iconSize)),
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
        color: Colors.grey[100]!.withOpacity(0.7),
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
                padding: EdgeInsets.symmetric(
                    horizontal: height * 0.1, vertical: height * 0.05),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 44, 181, 49),
                  borderRadius: BorderRadius.circular(height * 0.2),
                ),
                child: Text('50 Min',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize,
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
          Icon(Icons.group, size: iconSize * 0.8),
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
              decoration: BoxDecoration(
                color: Colors.purple[100]!.withOpacity(0.8),
                borderRadius: const BorderRadius.only(
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
                      const Icon(Icons.person, size: 15),
                      SizedBox(width: height * 0.05),
                      const Text(
                        'Abdessamed bouazza',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.phone, size: 15),
                      SizedBox(width: 5),
                      Icon(Icons.mail_outline, size: 15),
                      SizedBox(width: 5),
                      Icon(Icons.location_on, size: 15),
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

  Widget _buildResponsiveRow3(double screenSizeWidth, double screenSizeHeight) {
    // Calculate responsive sizes
    double containerHeight = screenSizeHeight * 0.09;
    double fontSize = screenSizeWidth * 0.04;

    return Row(
      children: [
        Expanded(child: _buildDateTimeContainer3(containerHeight, fontSize)),
      ],
    );
  }

  Widget _buildDateTimeContainer3(double height, double fontSize) {
    return Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100]!.withOpacity(0.7),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            LabeledBorder(
              bottomLabel: 'Pcs',
              rightLabel: 'X',
              height: height * 0.7,
              width: height,
              child: const Text('1'),
            ),
            SizedBox(width: height * 0.2),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Changed this
                crossAxisAlignment: CrossAxisAlignment.center, // Added this
                children: [
                  Text(
                    'the Quarter Charcoal Grilled Chicken Meal is a culinary delight',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Italien - Stor'),
                      Text('2800',
                          style: TextStyle(
                              fontSize: fontSize, fontWeight: FontWeight.bold)),
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
              color: Colors.black,
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
