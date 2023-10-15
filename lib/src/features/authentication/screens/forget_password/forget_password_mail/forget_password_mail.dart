import 'package:flutter/material.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(DefaultSize),
            child: Column(
              children: [
                SizedBox(height: DefaultSize * 4),
                FormHeaderWidget(
                  image: ForgetPasswordImage,
                  title: ForgetPassword,
                  subtitle: ForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: FormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text(Email),
                          hintText: Email,
                          prefixIcon: Icon(Icons.mail_outline_rounded)
                        ),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(Next)))
                    ],
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
