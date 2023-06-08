
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prefeex/AppColors/all_colors.dart';

class AppStyle{

    // TextFormFiled Style //
    InputDecoration textinputdecoration(String hint,icon,) => InputDecoration(
     hintText: hint,
     prefixIcon: icon,

     border: InputBorder.none,
     focusedBorder: OutlineInputBorder(
       borderSide: BorderSide.none,
       borderRadius: BorderRadius.all(Radius.circular(30.r))
     ),
     hintStyle: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
      color: Color(0xff38383c),
     ),
  );
    InputDecoration passinputdecoration(String hint,icon,) => InputDecoration(
     hintText: hint,
     prefixIcon: icon,

     border: InputBorder.none,
     focusedBorder: OutlineInputBorder(
       borderSide: BorderSide.none,
       borderRadius: BorderRadius.all(Radius.circular(30.r))
     ),
     hintStyle: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy',
      color: Color(0xff38383c),
     ),
  );
    // TextFormFiled Style //

    // Custom Button //
    TextStyle custombuttonstyle = TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.buttontext_color,
        shadows: [
          BoxShadow(
              blurRadius: (2),
            offset: Offset(0, 1),
            color: AppColors.button_color,
          )
        ]);
    // Custom Button //

    // FORGOT RESEND Button //
     TextStyle resendbuttonstyle = TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: AppColors.second_color, fontFamily: 'Gilroy',);
     // FORGOT RESEND Button //
     TextStyle sinupTextstyle = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400,
         fontFamily: 'Gilroy',color: Color(0xff151555));
    // Singup Button //

    TextStyle myapptextstylr = TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: AppColors.secondtext_color, fontFamily: 'Gilroy',);
    TextStyle navbartextstylr = TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: AppColors.secondtext_color, fontFamily: 'Gilroy',);


}