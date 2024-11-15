import 'package:get/get.dart';

import '../controllers/sinup_screen_controller.dart';

class SinupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SinupScreenController>(
      () => SinupScreenController(),
    );
  }
}
