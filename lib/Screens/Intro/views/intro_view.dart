import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class INTROVIEW extends StatefulWidget {
  @override
  State<INTROVIEW> createState() => _INTROVIEWState();
}

class _INTROVIEWState extends State<INTROVIEW> {
  var size, height, width;

  PageController _pageController = PageController();

  bool endpage = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                opacity: .6,
                image: AssetImage(
                  'asset/IntroImage/back.png',
                ),
              )),
            ),
            Positioned(
              bottom: 20,
              left: 18,
              child: Center(
                child: Container(
                  height: 410.h,
                  width: 352.w,
                  decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.all(Radius.circular(32))),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 10.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffD9E1EA),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SvgPicture.asset(
                                'asset/splash screen/Shoccho Logo.svg',
                                height: 35,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 280,
                                width: 300,
                                color: Colors.orange,
                                child: PageView(
                                  controller: _pageController,
                                  onPageChanged: (value) {
                                    setState(() {
                                      endpage = (value == 2);
                                    });
                                  },
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Main Title 1st',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Sub Title',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Main Title 2nd',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Sub Title',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Main Title 3rd',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Sub Title',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        _pageController.nextPage(
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.easeIn);




                                      },
                                      child: Text(
                                        'Skip',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  SmoothPageIndicator(
                                    controller: _pageController,
                                    count: 3,
                                    effect: const WormEffect(
                                      dotHeight: 8,
                                      dotWidth: 8,
                                      type: WormType.thinUnderground,
                                    ),
                                  ),
                                  endpage
                                      ? GestureDetector(
                                          child: Text(
                                            'Done',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          onTap: () {
                                            _pageController.nextPage(
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.easeIn);

                                             Get.offAndToNamed('/login');


                                          },
                                        )
                                      : GestureDetector(
                                          child: Text(
                                            'Next',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          onTap: () {
                                            _pageController.nextPage(
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.easeIn);
                                          },
                                        ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
