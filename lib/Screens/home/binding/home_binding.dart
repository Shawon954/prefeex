
import 'package:get/get.dart';
import 'package:prefeex/Screens/home/controllers/home_contoller.dart';

class INTROBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HOMECONTOLLER>(() => HOMECONTOLLER());
  }

}