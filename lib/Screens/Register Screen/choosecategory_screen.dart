import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog_unique/Constants/Components/Strings/registerpage_strings.dart';
import 'package:techblog_unique/Screens/Register%20Screen/Widgets/techtextfield.dart';

class ChooseCategoryScreen extends StatelessWidget {
  const ChooseCategoryScreen({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        //TechBot
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset("assets/images/TechBot.svg",
              width: size.width / 3.5, height: size.height / 6.8),
        ),
        //Congrats intro
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
            text: RegisterPageStrings.congrats,
              style: TextStyle(color: Colors.black)

          )),
        ),
        //TextField
          Padding(
            padding: const EdgeInsets.fromLTRB(20,8,20,0),
            child: TechTextField(hintText: RegisterPageStrings.name),
          ),
          SizedBox(height: 30,),
          //Choose Categories
          Text(RegisterPageStrings.chooseCategories)
        
        
        
        
        
      ],),),
      
      
      
      
    )
    
    
    
    );
  }
}
