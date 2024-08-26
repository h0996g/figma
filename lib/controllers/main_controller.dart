import 'package:get/get.dart';

class MainController extends GetxController {
  final currentIndexBarBig = 0.obs;
  int get currentIndex => currentIndexBarBig.value;

  void changeIndex(int index) {
    currentIndexBarBig.value = index;
  }
}
