import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/onboarding_model.dart';
import '../screens/onboarding_screen/onboarding_page_widget.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: OnboardingImage1,
        title: OnboardingTitle1,
        subTitle: OnboardingSubTitle1,
        counterText: OnboardingCounter1,
        bgColor: OnboardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: OnboardingImage2,
        title: OnboardingTitle2,
        subTitle: OnboardingSubTitle2,
        counterText: OnboardingCounter2,
        bgColor: OnboardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: OnboardingImage3,
        title: OnboardingTitle3,
        subTitle: OnboardingSubTitle3,
        counterText: OnboardingCounter3,
        bgColor: OnboardingPage3Color,
      ),
    )
  ];

  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
}