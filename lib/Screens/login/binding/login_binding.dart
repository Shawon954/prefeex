
import 'package:get/get.dart';
import 'package:prefeex/Screens/login/controllers/login_controllers.dart';

class LOGINBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LOGINCONTOLLERS>(() => LOGINCONTOLLERS());
  }

}