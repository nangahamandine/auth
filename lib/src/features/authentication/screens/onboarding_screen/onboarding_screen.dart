import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:auth/src/features/authentication/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obCcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obCcontroller.pages,
            liquidController: obCcontroller.controller,
            onPageChangeCallback: obCcontroller.onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obCcontroller.animateToNextSlide(),
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
              onPressed: ()  => obCcontroller.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),))
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: obCcontroller.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: Color(0xFF272727),
                  dotHeight: 5.0,
                ) ,
            )),
          )
        ],
      ),
    );
  }
}


