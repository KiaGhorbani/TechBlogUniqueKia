import 'package:flutter/material.dart';
import 'package:techblog_unique/Constants/Components/Strings/registerpage_strings.dart';
import 'package:techblog_unique/Screens/Register%20Screen/Widgets/Bottom%20Sheets/otp_bottomsheet.dart';
import 'package:techblog_unique/Screens/Register%20Screen/Widgets/techtextfield.dart';

class EmailBottomSheet extends StatelessWidget {
  const EmailBottomSheet({super.key, required this.size});

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
            //Please Enter Email
            Text(RegisterPageStrings.enterEmail),
            //TextField
            TechTextField(hintText: RegisterPageStrings.emailTextFieldHintText,),
            //Button
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  showModalBottomSheet(context: context, builder: (context) {
                   return OtpBottomSheet(size: size);
                  },);



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
