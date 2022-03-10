import 'package:app_top_filmes/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() { 
    Get.put(SplashController());
  }
}