
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    TextStyle custombuttonstyle = TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Color(0xffFFFFFF),
        shadows: [
          BoxShadow(
              blurRadius: (2),
            offset: Offset(0, 1),
            color: Color(0xff57b2dc),
          )
        ]);
    // Custom Button //

    // Singup Button //
     TextStyle sinupbuttonstyle = TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xffAF00FF), fontFamily: 'Gilroy',);

     TextStyle sinupTextstyle = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400,
         fontFamily: 'Gilroy',color: Color(0xffBABAC6));
    // Singup Button //

    TextStyle myapptextstylr = TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xff9A99A0), fontFamily: 'Gilroy',);


}