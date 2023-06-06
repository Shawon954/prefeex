
import 'package:get/get.dart';
import 'package:prefeex/Screens/Intro/binding/intro_binding.dart';
import 'package:prefeex/Screens/Intro/views/intro_view.dart';
import 'package:prefeex/Screens/login/binding/login_binding.dart';
import 'package:prefeex/Screens/login/views/login_views.dart';
import 'package:prefeex/Screens/splash/binding/splash_binding.dart';
import 'package:prefeex/Screens/splash/views/splash_view.dart';

class AppPage{
  static const INITIAL = SPLASH ;

  static const SPLASH = '/splash';
  static const INTRO = '/intro';
  static const LOGIN = '/login';



  static final routes = [

    GetPage(name: SPLASH,
      page:()=>SPLASHVIEW(),
      binding: SPLASHBINDING(),
    ),
    GetPage(name: INTRO,
      page:()=>INTROVIEW(),
      binding: INTROBINDING(),
    ),
    GetPage(name: LOGIN,
      page:()=>LOGINVIEW(),
      binding: LOGINBINDING(),
    ),

  ];


}
