import 'package:flutter/material.dart';
import 'package:techblog_unique/Constants/Components/Strings/registerpage_strings.dart';

import '../../choosecategory_screen.dart';
import '../techtextfield.dart';

class OtpBottomSheet extends StatelessWidget {
  const OtpBottomSheet({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: size.height / 2.57,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Please Enter OTP
            Text(RegisterPageStrings.enterOtp),
            //TextField
            TechTextField(
              hintText: RegisterPageStrings.congrats,
            ),
            //Button
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => ChooseCategoryScreen(),
                  ));
                },
                child: Text(
                  RegisterPageStrings.buttonChildContinue,
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
