
import 'package:get/get.dart';
import 'package:prefeex/Screens/home/controllers/home_contoller.dart';

class HOMEBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HOMECONTOLLER>(() => HOMECONTOLLER());
  }

}