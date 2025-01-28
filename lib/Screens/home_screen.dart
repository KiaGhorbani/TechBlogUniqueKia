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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: SolidColors.scaffoldBg,
        automaticallyImplyLeading: false,
        title: Padding(
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
      ),
      body: Stack(children: [
        //Body
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 10,
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
                        image: Image.asset('assets/images/HomepagePoster.png')
                            .image,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: SizedBox(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
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
              ),
              SizedBox(
                height: 15,
              ),
              //HomePage Hottest blogs title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageIcon(
                          Image.asset("assets/icons/BluePen.png").image,
                          size: 20,
                          color: SolidColors.colorTitle,
                        )),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "مشاهده ی داغ ترین نوشته ها",
                      style: TextStyle(color: SolidColors.colorTitle),
                    )
                  ],
                ),
              ),
              //HomePage Hottest blogs
              SizedBox(
                height: size.height / 4.3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: size.height / 7,
                                  width: size.width / 2.5,
                                  decoration: BoxDecoration(
                                    color: SolidColors.primaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                ),
                                Positioned(
                                    top: 95,
                                    right: 10,
                                    child: Text(
                                      "ملیکا عزیزی",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )),
                                Positioned(
                                    top: 98,
                                    right: 95,
                                    child: Text(
                                      "Likes 235",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ))
                              ],
                            ),
                            SizedBox(
                              width: size.width / 2.5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8, top: 4),
                                child: Text(
                                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //HomePage Hottest podcasts title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageIcon(
                          Image.asset("assets/icons/BluePodcast.png").image,
                          size: 20,
                          color: SolidColors.colorTitle,
                        )),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "مشاهده ی داغ ترین پادکست ها",
                      style: TextStyle(color: SolidColors.colorTitle),
                    )
                  ],
                ),
              ),
              //HomePage Hottest podcasts
              SizedBox(
                height: size.height / 4.3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: size.height / 7,
                                  width: size.width / 2.5,
                                  decoration: BoxDecoration(
                                    color: SolidColors.colorTitle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                ),
                                Positioned(
                                    top: 95,
                                    right: 10,
                                    child: Text(
                                      "ملیکا عزیزی",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )),
                                Positioned(
                                    top: 98,
                                    right: 95,
                                    child: Text(
                                      "Likes 235",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ))
                              ],
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("موضوع"),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        //Bottom Navigation
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: size.height / 5.89,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: GradientColors.bottomNavigationBg,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Center(
              child: Container(
                height: size.height / 12.35,
                width: size.width / 1.3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: GradientColors.bottomNavigation,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            Image.asset("assets/icons/BottomNavHome.png").image,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                              Image.asset("assets/icons/BottomNavWrite.png")
                                  .image,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                              Image.asset("assets/icons/BottomNavUser.png")
                                  .image,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
