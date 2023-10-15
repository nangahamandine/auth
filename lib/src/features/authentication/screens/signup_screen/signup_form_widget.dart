import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: FormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(FullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(Email),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(PhoneNo),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(Password),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: FormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(Signup.toUpperCase()),),),
          ],
        ),
      ),
    );
  }
}