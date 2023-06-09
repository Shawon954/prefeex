
import 'package:get/get.dart';
import 'package:prefeex/NavigationBar/navigationbar.dart';
import 'package:prefeex/Screens/Intro/binding/intro_binding.dart';
import 'package:prefeex/Screens/Intro/views/intro_view.dart';
import 'package:prefeex/Screens/attendance/binding/attendance_binding.dart';
import 'package:prefeex/Screens/attendance/views/attendance_view.dart';
import 'package:prefeex/Screens/auth/forgot/binding/forgot_binding.dart';
import 'package:prefeex/Screens/auth/forgot/views/forgot_email.dart';
import 'package:prefeex/Screens/auth/forgot/views/forgotnewpass.dart';
import 'package:prefeex/Screens/auth/forgot/views/verifycode.dart';
import 'package:prefeex/Screens/auth/login/binding/login_binding.dart';
import 'package:prefeex/Screens/auth/login/views/login_views.dart';
import 'package:prefeex/Screens/home/binding/home_binding.dart';
import 'package:prefeex/Screens/home/views/home_view.dart';
import 'package:prefeex/Screens/profile/binding/profile_binding.dart';
import 'package:prefeex/Screens/profile/views/profile_view.dart';

import 'package:prefeex/Screens/splash/binding/splash_binding.dart';
import 'package:prefeex/Screens/splash/views/splash_view.dart';

class AppPage{
  static const INITIAL = SPLASH ;

  static const SPLASH = '/splash';
  static const INTRO = '/intro';
  static const LOGIN = '/login';

    // FORGOT PASSWORD //
  static const FOREMAIL = '/forgotemail';
  static const FORNEWPASS = '/forgotnewpass';
  static const FORVERIFY = '/forgotverify';
   // FORGOT PASSWORD //

   static const NAVBAR = '/navbar';


   // HOMEPAGE //
   static const HOMEPAGE = '/home';
   // HOMEPAGE //

   // ATTENDANCE //
   static const ATTENPAGE = '/attend';
   // ATTENDANCE//

  // PROFILE //
   static const PROFILEPAGE = '/profile';
   // PROFILE//


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


    // Forgot Password //
    GetPage(name: FOREMAIL,
      page:()=>FORGOREMAIL(),
      binding: FORGOTBINDING(),
    ),
    GetPage(name: FORNEWPASS,
      page:()=>FORGOTNEWPASSWORD(),
      binding: FORGOTBINDING(),
    ),
    GetPage(name: FORVERIFY,
      page:()=>FOEGOTVERIFICATION(),
      binding: FORGOTBINDING(),
    ),
    // Forgot Password //

     // NAVBAR//
     GetPage(name: NAVBAR, page: ()=>NAVIGATIONBAR(),),


    // HOME PAGE //
     GetPage(name: HOMEPAGE,
         page: ()=>HOMEVIEW(),
         binding: HOMEBINDING()
     ),
     // HOME PAGE //


    // ATTENDANCE//
    GetPage(
      name: ATTENPAGE,
      page: ()=>ATTENVIEW(),
      binding: ATTENBINDING()
    ),
    // ATTENDANCE//

    // PROFILE//
    GetPage(
      name: PROFILEPAGE,
      page: ()=>PROFILEVIEW(),
      binding: PROFILEBINDING()
    ),
    // PROFILE//

  ];


}
