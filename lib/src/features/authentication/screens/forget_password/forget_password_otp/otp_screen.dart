import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(DefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(OtpTitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),),
            Text(OtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
            SizedBox(height: 40.0),
            Text("$OtpMessage amandinenangah1@gmail.com", textAlign: TextAlign.center,),
            SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
                filled: true,
              onSubmit: (code){ print("OTP is => $code");},
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text(Next)))
          ],
        ),
      ),
    );
  }
}
