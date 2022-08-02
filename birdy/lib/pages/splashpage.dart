
import 'package:flutter/material.dart';

import '../helpers/appcolors.dart';
import '../helpers/iconhelper.dart';
import '../widgets/iconfont.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(milliseconds: duration), (() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage));
    }));

    return Scaffold(
        body: Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: IconFont(color: AppColors.mainColor, iconName: IconFontHelper.logo,size: 130,)));
  }
}
