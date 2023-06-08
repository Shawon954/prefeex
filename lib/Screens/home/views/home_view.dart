import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

import 'package:prefeex/AppColors/all_colors.dart';
import 'package:prefeex/Style/style.dart';

class HOMEVIEW extends StatefulWidget {
  const HOMEVIEW({Key? key}) : super(key: key);

  @override
  State<HOMEVIEW> createState() => _HOMEVIEWState();
}

class _HOMEVIEWState extends State<HOMEVIEW> {
 


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.page_color,

          body: Column(
            children: [

            ],
          )

      ),
    );
  }
}
