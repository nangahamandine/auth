import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/features/authentication/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: OnboardingImage1,
          title: OnboardingTitle1,
          subTitle: OnboardingSubTitle1,
          counterText: OnboardingCounter1,
          height: size.height,
          bgColor: OnboardingPage1Color,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: OnboardingImage2,
          title: OnboardingTitle2,
          subTitle: OnboardingSubTitle2,
          counterText: OnboardingCounter2,
          height: size.height,
          bgColor: OnboardingPage2Color,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: OnboardingImage3,
          title: OnboardingTitle3,
          subTitle: OnboardingSubTitle3,
          counterText: OnboardingCounter3,
          height: size.height,
          bgColor: OnboardingPage3Color,
        ),
      )
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: (){
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color(0xFF272727), shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
          )
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: ()  => controller.jumpToPage(page: 2),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),))
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Color(0xFF272727),
                dotHeight: 5.0,
              ) ,
          ))
        ],
      ),
    );
  }

  void onPageChangedCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}


