import 'package:auth/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? SecondaryColor : PrimaryColor,
      body: Stack(
        children: [
          FadeInAnimation(
            durationInMs: 1200,
            animatePosition: AnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(DefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(WelcomeScreenImage),height:height * 0.6),
                  Column(
                    children: [
                      Text(
                        WelcomeTitle,
                        style: Theme.of(context).textTheme.headline4,),
                      Text(
                        WelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(Login.toUpperCase()),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(Signup.toUpperCase()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
