import 'package:get/get.dart';

import 'package:payment_gateaway_app/app/modules/get_started/controllers/login_controller.dart';
import 'package:payment_gateaway_app/app/modules/get_started/controllers/register_controller.dart';

import '../controllers/get_started_controller.dart';

class GetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<GetStartedController>(
      () => GetStartedController(),
    );
  }
}
