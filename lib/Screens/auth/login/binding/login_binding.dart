
import 'package:get/get.dart';
import 'package:prefeex/Screens/auth/login/controllers/login_controllers.dart';


class LOGINBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LOGINCONTOLLERS>(() => LOGINCONTOLLERS());
  }

}