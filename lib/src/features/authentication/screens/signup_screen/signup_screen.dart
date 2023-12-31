import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/features/authentication/screens/signup_screen/signup_footer_widget.dart';
import 'package:auth/src/features/authentication/screens/signup_screen/signup_form_widget.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../login_screen/login_footer_widget.dart';
import '../login_screen/login_form_widget.dart';
import '../login_screen/login_header_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(DefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormHeaderWidget(
                    image: WelcomeScreenImage,
                    title: SignupTitle,
                    subtitle: SignupSubtitle,
                  ),
                  SignupFormWidget(),
                  SignupFooterWidget()
                ],
              ),
            ),
          ),
        )
    );
  }
}

