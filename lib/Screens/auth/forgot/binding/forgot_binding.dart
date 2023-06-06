import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:prefeex/Screens/auth/forgot/controller/forgot_controller.dart';

class FORGOTBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FORGOTCONTROLLER>(() => FORGOTCONTROLLER());
  }

}