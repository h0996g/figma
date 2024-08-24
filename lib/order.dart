import 'package:flutter/material.dart';

class FigmaPage extends StatelessWidget {
  const FigmaPage({super.key});

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
          Column(
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
    return Scaffold(
      // body:

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
}
