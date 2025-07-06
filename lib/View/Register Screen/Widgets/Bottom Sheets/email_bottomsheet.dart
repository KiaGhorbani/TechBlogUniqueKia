import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/Constants/Components/Strings/registerpage_strings.dart';
import 'package:techblog_unique/View/Register%20Screen/Controller/register_controller.dart';

import '../techtextfield.dart';
import 'otp_bottomsheet.dart';

class EmailBottomSheet extends StatelessWidget {
  EmailBottomSheet({super.key, required this.size});

  final Size size;
  final RegisterController registerController = Get.find<RegisterController>();

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
            //Please Enter Email
            Text(RegisterPageStrings.enterEmail),
            //TextField
            TechTextField(
              hintText: RegisterPageStrings.emailTextFieldHintText,
              controller: registerController.emailTextController,
            ),
            //Button
            ElevatedButton(
                onPressed: () {
                  registerController.register();
                  Navigator.pop(context);
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return OtpBottomSheet(size: size);
                    },
                  );
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
