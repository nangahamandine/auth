import 'package:auth/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: Image(
                image: AssetImage(GoogleLogoImage),
                width: 20.0,),
              label: Text(SigninwithGoogle.toUpperCase())),
        ),
        TextButton(
            onPressed: () {
              Get.to(() => const LoginScreen());
            },
            child: Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: AlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                      TextSpan(text: Login.toUpperCase())
                    ]
                )))
      ],
    );
  }
}