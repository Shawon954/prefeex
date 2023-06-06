import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prefeex/Route/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context , child){

        return GetMaterialApp(
          title: 'Prefeex',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          initialRoute: AppPage.INITIAL,
          getPages: AppPage.routes,


        );
      },

    );







  }
}

