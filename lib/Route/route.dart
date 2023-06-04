
import 'package:get/get.dart';
import 'package:prefeex/Screens/HomePage/home_page.dart';
import 'package:prefeex/Screens/Intro_Screen/introscreen_one.dart';
import 'package:prefeex/SplashScreen/splash_screen.dart';


List<GetPage>getpage=[
  GetPage(name: '/splash', page: ()=>Splash_Screen()),
  GetPage(name: '/introsceen_One', page: ()=>Intro_one()),
  GetPage(name: '/home', page: ()=>Home()),
  
  
];