import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(
            durationInMs: 1600,
            animatePosition: AnimatePosition(
              topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0,
            ), child: const Image(image: AssetImage(SplashTopIcon)),
          ),
          FadeInAnimation(
            durationInMs: 2000,
            animatePosition: AnimatePosition(topBefore: 80, topAfter: 80, leftAfter: DefaultSize, leftBefore: -80),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppName,
                        style: Theme.of(context).textTheme.headline5,),
                      Text(
                        AppTagLine,
                        style: Theme.of(context).textTheme.headline4,)
                     ],
                    ),
          ),
          FadeInAnimation(
              durationInMs: 2400,
              animatePosition: AnimatePosition(bottomBefore: 0, bottomAfter: 100),
              child: Image(image: AssetImage(SplashImage))),
        ],
      ),
    );
  }
}

