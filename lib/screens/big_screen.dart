import 'package:figma/components/size.dart';
import 'package:figma/widget/big_screen/app_bar.dart';
import 'package:figma/widget/big_screen/grid_view.dart';
import 'package:figma/widget/big_screen/toggel_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BigScreen extends StatefulWidget {
  const BigScreen({super.key});

  @override
  State<BigScreen> createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [SystemUiOverlay.bottom]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQueryValues(context).height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        mediaWidth: MediaQuery.of(context).size.width,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.white,
              height: mediaHeight * 0.055,
              child: const MyToggleButtonWidget(),
            ),
            const SizedBox(height: 5),
            const Expanded(child: ProductGridView()),
          ],
        ),
      ),
    );
  }
}
