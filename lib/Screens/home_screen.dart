import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techblog_unique/Constants/material_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            //AppBar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu_sharp),
                Image.asset(
                  'assets/images/Logo.png',
                  width: size.width / 3.7,
                ),
                Icon(Icons.search_sharp)
              ],
            ),
          ),
          //Home Screen Poster
          Stack(children: [
            //Poster
            Container(
              width: size.width / 1.19,
              height: size.height / 4.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                image: DecorationImage(
                    image:
                        Image.asset('assets/images/HomepagePoster.png').image,
                    fit: BoxFit.cover),
              ),
            ),
            //Poster Gradient
            Container(
              width: size.width / 1.19,
              height: size.height / 4.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(
                      colors: GradientColors.posterCover,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            //-----------------
            //Meta Data Begin
            Positioned(
              top: 140,
              child: Text(
                "  ملیکا عزیزی - یک روز پیش",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Positioned(
                top: 140,
                left: 20,
                child: Text(
                  "253",
                  style: TextStyle(color: Colors.white),
                )),
            Positioned(
                top: 143,
                left: 47,
                child: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.white,
                  size: 15,
                )),
            Positioned(
              top: 175,
              left: 40,
              child: Text(
                "دوازده قدم برنامه نویسی یک دوره ی...",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            //Meta Data End
          ]),
          //-------------------
          //Home Screen Tags
          SizedBox(
            height: 85,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 37, 16, 16),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: GradientColors.tagsColor,
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft),
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ImageIcon(
                            Image.asset("assets/icons/Hashtag.png").image,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "فلاتر",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 50,),
          //TODO HomePage Hottest blogs
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("data"),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
