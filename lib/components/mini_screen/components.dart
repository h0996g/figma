import 'package:figma/components/components.dart';
import 'package:figma/const_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container navigationBarSmallScreen() {
  return Container(
    color: Colors.white,
    width: (Get.width * 0.25) * 0.1,
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
