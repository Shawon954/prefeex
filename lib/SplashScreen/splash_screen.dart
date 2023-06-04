import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prefeex/AppColors/all_colors.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),()=>Get.offAndToNamed('/introsceen_One'));
    return Scaffold(
      backgroundColor:appcolors.Splash_color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset('asset/splash screen/Shoccho Logo.svg'))
        ],
      ),
    );
  }
}
