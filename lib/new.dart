import 'package:flutter/material.dart';

class FigmaPage2 extends StatelessWidget {
  const FigmaPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            const Expanded(
              child: MainContent(),
            ),
            navigationBar(),
          ],
        ),
      ),
    );
  }

  Widget navigationBar() {
    return Container(
      color: Colors.white,
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                IconButton(icon: const Icon(Icons.payment), onPressed: () {}),
                IconButton(icon: const Icon(Icons.receipt), onPressed: () {}),
                IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
                IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                IconButton(icon: const Icon(Icons.payment), onPressed: () {}),
                IconButton(icon: const Icon(Icons.receipt), onPressed: () {}),
                IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
                IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                IconButton(icon: const Icon(Icons.payment), onPressed: () {}),
                IconButton(icon: const Icon(Icons.receipt), onPressed: () {}),
              ],
            ),
          ),
          const Spacer(),
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
    final Size screenSize = MediaQuery.of(context).size;

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
                  _buildResponsiveRow(screenSize),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.white,
              elevation: 0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildResponsiveRow2(screenSize),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }

  Widget _buildResponsiveRow(Size screenSize) {
    // Calculate responsive sizes
    double iconSize = screenSize.width * 0.07;
    double containerHeight = screenSize.height * 0.07;
    double fontSize = screenSize.width * 0.04;

    return Row(
      children: [
        Expanded(
            flex: 1, child: _buildIconContainer(containerHeight, iconSize)),
        SizedBox(width: screenSize.width * 0.01),
        Expanded(
            flex: 2,
            child: _buildInfoContainer(
                containerHeight, fontSize, 'C10', '#464646')),
        SizedBox(width: screenSize.width * 0.01),
        Expanded(
            flex: 4, child: _buildDateTimeContainer(containerHeight, fontSize)),
        SizedBox(width: screenSize.width * 0.01),
        Expanded(
            flex: 1, child: _buildDeleteContainer(containerHeight, iconSize)),
      ],
    );
  }

  Widget _buildResponsiveRow2(Size screenSize) {
    // Calculate responsive sizes
    double iconSize = screenSize.width * 0.07;
    double containerHeight = screenSize.height * 0.07;
    double fontSize = screenSize.width * 0.04;

    return Row(
      children: [
        Expanded(
            flex: 1,
            child: _buildIconContainer2(containerHeight, iconSize, fontSize)),
        SizedBox(width: screenSize.width * 0.01),
        Expanded(
            flex: 7,
            child: _buildDateTimeContainer2(containerHeight, fontSize)),
        // SizedBox(width: screenSize.width * 0.01),
      ],
    );
  }

  Widget _buildIconContainer(double height, double iconSize) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.all(height * 0.1),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Icon(Icons.table_restaurant, size: iconSize)),
    );
  }

  Widget _buildIconContainer2(double height, double iconSize, double fontSize) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.all(height * 0.1),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.5),
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

  Widget _buildInfoContainer(
      double height, double fontSize, String title, String subtitle) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: height * 0.1, vertical: height * 0.05),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.5),
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
        color: Colors.grey[100]!.withOpacity(0.5),
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

  Widget _buildDateTimeContainer2(double height, double fontSize) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: height * 0.1, vertical: height * 0.05),
      decoration: BoxDecoration(
        color: Colors.grey[100]!.withOpacity(0.5),
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
}
