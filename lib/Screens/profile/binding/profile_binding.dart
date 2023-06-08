
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:prefeex/Screens/profile/controller/profile_controller.dart';

class PROFILEBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PROFILECONTROLLER>(() => PROFILECONTROLLER());
  }


}