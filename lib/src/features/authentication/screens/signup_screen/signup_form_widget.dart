import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/signup_controller.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: FormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(FullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(Email),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(PhoneNo),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(Password),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: FormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    SignupController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                  }
                },
                child: Text(Signup.toUpperCase()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}