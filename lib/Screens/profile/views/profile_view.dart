import 'package:flutter/material.dart';
import 'package:prefeex/AppColors/all_colors.dart';

class PROFILEVIEW extends StatefulWidget {
  const PROFILEVIEW({super.key});

  @override
  State<PROFILEVIEW> createState() => _PROFILEVIEWState();
}

class _PROFILEVIEWState extends State<PROFILEVIEW> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.page_color,

        body: Center(
          child: Text('PROFILE'),
        ),

      ),
    );
  }
}
