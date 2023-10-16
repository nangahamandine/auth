import 'package:auth/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';


class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: FormHeight -20,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(image: AssetImage(GoogleLogoImage), width: 20.0,),
              onPressed: () {},
              label: Text(SigninwithGoogle)),
        ),
        const SizedBox(height: FormHeight -20),
        TextButton(
          onPressed: () {
            Get.to(() => const SignupScreen());
          },
          child: Text.rich(
            TextSpan(
              text: DontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(
                    text: Signup,
                    style: TextStyle(color: Colors.blue,
                    )
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}