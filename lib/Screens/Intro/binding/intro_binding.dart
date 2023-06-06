import 'package:get/get.dart';
import 'package:prefeex/Screens/Intro/controllers/intro_controllers.dart';

class INTROBINDING extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<INTROCONTOLLER>(() => INTROCONTOLLER());
  }

}