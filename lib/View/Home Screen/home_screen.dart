import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Home%20Screen/Controller/homescreen_controller.dart';
import 'package:techblog_unique/View/Home%20Screen/Widgets/homescreen_hottestarticles.dart';
import 'Widgets/homescreen_hottestpodcasts.dart';
import 'Widgets/homescreen_poster.dart';
import 'Widgets/homescreen_tagslist.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.size});

  final HomeScreenController homeScreenController = Get.put(HomeScreenController());
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
              HomeScreenTagList(),
              SizedBox(
                height: 15,
              ),
              //HomePage Hottest blogs
              HomeScreenHottestArticles(
                size: size,
              ),
              SizedBox(
                height: 25,
              ),
              //HomePage Hottest podcasts title
              HomeScreenHottestPodcasts(size: size)
            ],
          ),
        ),
      ]),
    ));
  }
}
