import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';

class SpalshScreenController extends GetxController {
  //TODO: Implement SpalshScreenController

  final count = 0.obs;
  @override
  void onInit() {
    splashDuration();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  splashDuration(){
    Future.delayed(Duration(seconds: 2),() async {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      bool? isLogin=_prefs.getBool('isLogin');
      print("isLogin {$isLogin}");
      if( isLogin == null ){
        Get.offNamed(Routes.SIGNIN_SCREEN);
        print("isLogin == null");
      } else if (isLogin){
        print("isLogin true");
        Get.offNamed(Routes.HOME);
      }
      else{
         Get.offNamed(Routes.ONBOARDING_SCREEN);
        print("isLogin home");
       // Get.offNamed(Routes.HOME);
      }

    });

  }
}
