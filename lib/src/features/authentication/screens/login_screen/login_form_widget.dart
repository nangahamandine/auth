import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Container(
      padding: EdgeInsets.symmetric(vertical: FormHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: Email,
              hintText: Email,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: FormHeight),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: Password,
                hintText: Password,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp))
            ),
          ),
          SizedBox(height: FormHeight - 20,),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {},
                  child: Text(ForgetPassword))),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(Login.toUpperCase()),))
        ],
      ),
    ));
  }
}