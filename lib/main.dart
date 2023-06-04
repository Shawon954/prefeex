import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prefeex/Route/route.dart';
import 'package:prefeex/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Prefeex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Splash_Screen(),
      getPages: getpage,

    );
  }
}

