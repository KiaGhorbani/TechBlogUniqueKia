import 'package:flutter/material.dart';
import 'package:techblog_unique/Screens/Home%20Screen/Widgets/homescreen_hottestblogs.dart';
import 'package:techblog_unique/Screens/Home%20Screen/Widgets/homescreen_hottestpodcasts.dart';
import 'package:techblog_unique/Screens/Home%20Screen/Widgets/homescreen_poster.dart';
import 'package:techblog_unique/Screens/Home%20Screen/Widgets/homescreen_tagslist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.size});

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
            children: [
              SizedBox(
                height: 10,
              ),
              //Home Screen Poster
              HomescreenPoster(size: size),
              //Home Screen Tags
              HomescreenTagslist(),
              SizedBox(
                height: 15,
              ),
              //HomePage Hottest blogs
              HomescreenHottestblogs(size: size),
              SizedBox(
                height: 25,
              ),

              //HomePage Hottest podcasts title
              HomescreenHottestpodcasts(size: size)
            ],
          ),
        ),
      ]),
    ));
  }
}
