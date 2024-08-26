import 'package:get/get.dart';

class MainController extends GetxController {
  final _currentIndexNavBig = 0.obs;
  int get currentIndex => _currentIndexNavBig.value;

  void changeIndex(int index) {
    _currentIndexNavBig.value = index;
  }
}
