import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Intro_one extends StatelessWidget {
  const Intro_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: .5,
                  image: AssetImage('asset/IntroImage/back.png'),
              )

            ),
          )
        ],
      )
    );
  }
}
