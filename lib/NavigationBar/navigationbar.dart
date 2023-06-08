import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:prefeex/AppColors/all_colors.dart';
import 'package:prefeex/Route/app_route.dart';
import 'package:prefeex/Screens/attendance/views/attendance_view.dart';
import 'package:prefeex/Screens/home/views/home_view.dart';
import 'package:prefeex/Screens/profile/views/profile_view.dart';
import 'package:prefeex/Style/style.dart';

class NAVIGATIONBAR extends StatefulWidget {
  const NAVIGATIONBAR({super.key});

  @override
  State<NAVIGATIONBAR> createState() => _NAVIGATIONBARState();
}

class _NAVIGATIONBARState extends State<NAVIGATIONBAR> {

  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List _pages=[


    ATTENVIEW(),
    HOMEVIEW(),
    PROFILEVIEW(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(bottom: 20, left: 15, right: 15),
        child: Container(
          height: 60,
          decoration: BoxDecoration(

            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: CustomNavigationBar(

            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            borderRadius: Radius.circular(30),
            selectedColor: AppColors.button_color,
            iconSize: 30,
            unSelectedColor: AppColors.secondtext_color,
            items: [
              CustomNavigationBarItem(
                icon: Container(

                  decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    color: _currentIndex == 0
                        ? Colors.purpleAccent
                        : Colors.transparent,

                  ),
                  child: ImageIcon(
                    AssetImage(
                      'asset/navbaricons/atte.png',

                    ),
                    size: 30,
                  ),
                ),
                title: Text(
                  'Attendance',
                  style: AppStyle().navbartextstylr,
                ),
              ),
              CustomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == 1
                        ? Colors.purpleAccent
                        : Colors.transparent,
                  ),
                  child: ImageIcon(AssetImage(
                    'asset/navbaricons/home.png',
                  ),size: 30,
                  ),
                ),
                // title: Text(
                //   'Home',
                //   style: AppStyle().navbartextstylr,
                // ),

                title: _currentIndex== 1? Visibility(visible: true,child: Text('')):Visibility(child: Text('Home'))


              ),
              CustomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == 2
                        ? Colors.purpleAccent
                        : Colors.transparent,
                  ),
                  child: ImageIcon(AssetImage(
                    'asset/navbaricons/profile.png',
                  )),
                ),
                title: Text(
                  'Profile',
                  style: AppStyle().navbartextstylr,
                ),
              ),
            ],
          ),
        ),
      ),
      body: _pages[_currentIndex],

    );
  }
}
