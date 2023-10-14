import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            child: Image(image: AssetImage(SplashTopIcon))),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: 80,
            left: animate ? DefaultSize : -80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppName, style: Theme.of(context).textTheme.headline5,),
                Text(AppTagLine, style: Theme.of(context).textTheme.headline4,)
               ],
              )
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 120,
              right: animate ? -50 : 50,
              bottom: animate ? 0 : -10,
              child: Image(image: AssetImage(SplashImage))),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true );
    await Future.delayed(const Duration(milliseconds: 5000)
    );
  }
}
