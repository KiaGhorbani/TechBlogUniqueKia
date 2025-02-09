import 'package:flutter/material.dart';
import 'package:techblog_unique/Constants/Components/Divider/divider.dart';
import 'package:techblog_unique/Constants/material_color.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(children: [
            //Body
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //Profile Avatar
                  Image(image: Image.asset('assets/images/ProfileAvatar.png').image,height: 120,),
                  SizedBox(height: 15,),
                  //Edit Profile Avatar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        Image.asset("assets/icons/BluePen.png").image,
                        size: 20,
                        color: SolidColors.colorTitle,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "ویرایش عکس پروفایل",
                        style: TextStyle(color: SolidColors.colorTitle),
                      )
                    ],
                  ),
                  SizedBox(height: 60,),
                  //MetaData
                  Text("فاطمه امیری"),
                  Text("FatemehAmiri@gmail.com"),
                  //MetaData End
                  SizedBox(height: 40,),
                  MyDivider(size: size),
                  //My Favorite Blogs
                  InkWell(
                    splashColor: SolidColors.primaryColor,
                    onTap: () {
                      
                    },
                    child: SizedBox(

                      height: 45,
                      child: Center(child: Text("مقالات مورد علاقه ی من")),
                    ),
                    
                    
                  ),
                  MyDivider(size: size),
                  //My Favorite Podcasts
                  InkWell(
                    splashColor: SolidColors.primaryColor,
                    onTap: () {

                    },
                    child: SizedBox(

                      height: 45,
                      child: Center(child: Text("پادکست های مورد علاقه ی من")),
                    ),


                  ),
                  MyDivider(size: size),
                  //Log Out
                  InkWell(
                    splashColor: SolidColors.primaryColor,
                    onTap: () {

                    },
                    child: SizedBox(

                      height: 45,
                      child: Center(child: Text("خروج از حساب کاربری")),
                    ),


                  )
               
                  


                ],
              ),
            ),
          ]),
        ));
  }
}
