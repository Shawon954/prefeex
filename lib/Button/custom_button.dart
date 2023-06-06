
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prefeex/AppString/appstring.dart';
import 'package:prefeex/Style/style.dart';

class CUSTOMBUTTON extends StatelessWidget {

  const CUSTOMBUTTON(TextStyle custombuttonstyle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 312.w,
      decoration: BoxDecoration(
        color: Color(0xff6484FF),
        borderRadius: BorderRadius.all(Radius.circular(30.r))
      ),
      child: Center(child: Text(AppStrings().Button,style: AppStyle().custombuttonstyle)),

    );
  }
}
