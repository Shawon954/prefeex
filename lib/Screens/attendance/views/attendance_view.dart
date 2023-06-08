
import 'package:flutter/material.dart';
import 'package:prefeex/AppColors/all_colors.dart';

class ATTENVIEW extends StatefulWidget {
  const ATTENVIEW({super.key});

  @override
  State<ATTENVIEW> createState() => _ATTENVIEWState();
}

class _ATTENVIEWState extends State<ATTENVIEW> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.page_color,

        body: Center(
          child: Text('ATTEN'),
        ),

      ),
    );
  }
}
