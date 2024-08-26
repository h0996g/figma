import 'package:figma/controllers/main_controller.dart';
import 'package:get/get.dart';

Future<void> registerServices() async {
  // Register services BD
  // Get.put(CachHelper.init());
}

Future<void> registerControllers() async {
  // Register controllers
  Get.put(MainController());
}
