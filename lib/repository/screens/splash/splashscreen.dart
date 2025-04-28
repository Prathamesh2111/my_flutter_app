

import 'package:flutter/material.dart';
import 'package:my_flutter_app/domain/constants/appcolors.dart';
import 'package:my_flutter_app/repository/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Stack(
        children: [
        // Full-width top image
        Align(
        alignment: Alignment.topCenter,
        child: UiHelper.customImage(
          img: 'element.png',
          width: screenWidth,
          fit: BoxFit.cover,
        ),
      ),
      // Centered image in the middle of the screen
      Align(
        alignment: Alignment.center,
        child: UiHelper.customImage(
          img: 'Vector.png',
          width: 120,
          height: 120,
          fit: BoxFit.contain,
    ),
    ),
    // Bottom-centered circular progress indicator
      Align(
         alignment: Alignment.bottomCenter,
         child: Padding(
         padding: const EdgeInsets.only(bottom: 40.0),
         child: CircularProgressIndicator(color: Colors.white,),
          ),
         ),
        ],
      ),
    );
  }
}
