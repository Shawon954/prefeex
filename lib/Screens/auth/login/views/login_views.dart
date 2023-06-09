import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:prefeex/AppString/appstring.dart';
import 'package:prefeex/Button/custom_button.dart';
import 'package:prefeex/Style/style.dart';



class LOGINVIEW extends StatefulWidget {


  @override
  State<LOGINVIEW> createState() => _LOGINVIEWState();
}

class _LOGINVIEWState extends State<LOGINVIEW> {
  var size, height, width;

  final _formKey = GlobalKey<FormState>();

  bool pass = true;

  submithundel() {
    _formKey.currentState!.validate();
    _formKey.currentState!.save();
  }

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    opacity: .6,
                    image: AssetImage(
                      'asset/IntroImage/back.png',
                    ),
                    fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 30,
                  left: 18,
                  child: Center(
                    child: Container(
                      height: 400.h,
                      width: 352.w,
                      decoration: BoxDecoration(
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topCenter,
                            children: [
                              Positioned(
                                top: -50,
                                child: CircleAvatar(
                                  radius: 50.r,
                                  backgroundColor: Color(0xffFFFFFF),
                                  child: Center(
                                      child: Image.asset(
                                    'asset/login/shoccho_logo.png',
                                    height: 65.h,
                                    width: 65.w,
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 60.h,
                              ),
                              Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Gilroy',
                                    color: Color(0xff010202)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Log into your account',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9A99A0),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 12, right: 12),
                                        child: TextFormField(
                                          controller: _emailcontroller,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Enter your email';
                                            } else if (value.isEmail) {
                                              return '';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color(0xffeeecec),
                                            hintText: 'Email Address',
                                            prefixIcon: Icon(
                                              Icons.email_outlined,
                                              color: Color(0xffBB83FF),
                                            ),
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30))),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30))),
                                            hintStyle: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Gilroy',
                                              color: Color(0xff38383c),
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12),
                                      child: TextFormField(
                                        controller: _passwordcontroller,
                                        keyboardType: TextInputType.text,
                                        obscureText: pass,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Enter your password';
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xffeeecec),
                                          hintText: 'Password',
                                          prefixIcon: Icon(
                                            Icons.lock_outline_rounded,
                                            color: Color(0xffBB83FF),
                                          ),
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                pass = !pass;
                                              });
                                            },
                                            child: Icon(
                                              pass
                                                  ? Icons
                                                      .visibility_off_outlined
                                                  : Icons.visibility_outlined,
                                              color: Color(0xffBB83FF),
                                            ),
                                          ),
                                          border: InputBorder.none,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30.r))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30.r))),
                                          hintStyle: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Gilroy',
                                            color: Color(0xff38383c),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // TextFormField(
                                    //   controller: _emailcontroller,
                                    //   keyboardType:
                                    //   TextInputType.emailAddress,
                                    //   validator: (value) {
                                    //     if (value!.isEmpty) {
                                    //       return 'Enter your email';
                                    //     } else if (value.isEmail) {
                                    //       return '';
                                    //     }
                                    //     return null;
                                    //   },
                                    //   decoration: InputDecoration(
                                    //     filled: true,
                                    //     fillColor: Color(0xffeeecec),
                                    //
                                    //     hintText: 'Email Address',
                                    //     prefixIcon: Icon(
                                    //       Icons.email_outlined,
                                    //       color: Color(0xffBB83FF),
                                    //     ),
                                    //     border: InputBorder.none,
                                    //     enabledBorder: OutlineInputBorder(
                                    //         borderSide: BorderSide.none,
                                    //         borderRadius: BorderRadius.all(Radius.circular(30))
                                    //     ),
                                    //     focusedBorder: OutlineInputBorder(
                                    //         borderSide: BorderSide.none,
                                    //         borderRadius: BorderRadius.all(Radius.circular(30))
                                    //     ),
                                    //
                                    //     hintStyle: TextStyle(
                                    //       fontSize: 15.sp,
                                    //       fontWeight: FontWeight.w400,
                                    //       fontFamily: 'Gilroy',
                                    //       color: Color(0xff38383c),
                                    //     ),
                                    //   ),
                                    // )),
                                    // Container(
                                    //     height: 60.h,
                                    //     width: 312.w,
                                    //     decoration: BoxDecoration(
                                    //         color: Color(0xffeeecec),
                                    //         borderRadius: BorderRadius.all(
                                    //             Radius.circular(30.r))),
                                    //     child: Center(
                                    //         child: Padding(
                                    //       padding:
                                    //           const EdgeInsets.only(left: 8),
                                    //       child:
                                    //
                                    //       TextFormField(
                                    //         controller: _passwordcontroller,
                                    //         keyboardType: TextInputType.text,
                                    //         obscureText: pass,
                                    //         validator: (value) {
                                    //           if (value!.isEmpty) {
                                    //             return 'Enter your password';
                                    //           }
                                    //           return null;
                                    //         },
                                    //         decoration: InputDecoration(
                                    //           hintText: 'Password',
                                    //           prefixIcon: Icon(
                                    //             Icons.lock_outline_rounded,
                                    //             color: Color(0xffBB83FF),
                                    //           ),
                                    //           suffixIcon: GestureDetector(
                                    //             onTap: () {
                                    //               setState(() {
                                    //                 pass = !pass;
                                    //               });
                                    //             },
                                    //             child: Icon(
                                    //               pass
                                    //                   ? Icons
                                    //                       .visibility_off_outlined
                                    //                   : Icons
                                    //                       .visibility_outlined,
                                    //               color: Color(0xffBB83FF),
                                    //             ),
                                    //           ),
                                    //           border: InputBorder.none,
                                    //           focusedBorder:
                                    //               OutlineInputBorder(
                                    //                   borderSide:
                                    //                       BorderSide.none,
                                    //                   borderRadius:
                                    //                       BorderRadius.all(
                                    //                           Radius.circular(
                                    //                               30.r))),
                                    //           hintStyle: TextStyle(
                                    //             fontSize: 15.sp,
                                    //             fontWeight: FontWeight.w400,
                                    //             fontFamily: 'Gilroy',
                                    //             color: Color(0xff38383c),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     )))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    onTap: () {
                                      Get.toNamed('/forgotemail');
                                    },
                                    child: Text(
                                      AppStrings().ForgotText,
                                      style: AppStyle().myapptextstylr,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 15.h,
                              ),
                              InkWell(
                                  onTap: () {
                                    submithundel();
                                    Get.toNamed('/navbar');

                                    // Get.snackbar('Log In', 'Successfully',
                                    //     duration: Duration(seconds: 3),
                                    //     snackPosition: SnackPosition.TOP);
                                  },
                                  child: CUSTOMBUTTON(
                                    AppStyle().custombuttonstyle,
                                  )),

                              SizedBox(
                                height: 5.h,
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Text(
                              //       AppStrings().SpanTextOne,
                              //       style: AppStyle().sinupTextstyle,
                              //     ),
                              //     SizedBox(
                              //       width: 5.h,
                              //     ),
                              //     InkWell(
                              //       onTap: () {
                              //         print('Click Ok');
                              //       },
                              //       child: Text(
                              //         AppStrings().SpanTextTwo,
                              //         style: AppStyle().sinupbuttonstyle,
                              //       ),
                              //     ),
                              //     SizedBox(
                              //       width: 5.h,
                              //     ),
                              //     Text(
                              //       AppStrings().SpanTextThree,
                              //       style: AppStyle().sinupTextstyle,
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget EmailFormFiled(
  controller,
  inputType,
  hint,
  Icon icon,
) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyle().textinputdecoration(
      hint,
      icon,
    ),
  );
}
