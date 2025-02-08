import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog_unique/Constants/Components/Strings/registerpage_strings.dart';
import 'package:techblog_unique/Screens/Register%20Screen/Widgets/Bottom%20Sheets/email_bottomsheet.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //TechBot
        SvgPicture.asset("assets/images/TechBot.svg",
            width: size.width / 3.5, height: size.height / 6.8),
        //Intro
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: RegisterPageStrings.intro,
                style: TextStyle(color: Colors.black),
              )),
        ),
        //Button
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ElevatedButton(
            onPressed: () {
              //BottomSheet
              showModalBottomSheet(context: context,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (context) {
                return EmailBottomSheet(size: size);

              },);




            },
            child: Text(
              RegisterPageStrings.buttonChild,
              style: TextStyle(color: Colors.white),
            ),
          ),
        )


      ],
    ));
  }
}
