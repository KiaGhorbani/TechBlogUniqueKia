import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:techblog_unique/Model/HomePage/podcast_model.dart';
import 'package:techblog_unique/View/Podcast%20Screen/Controller/podcastscreen_controller.dart';
import 'package:techblog_unique/View/Podcast%20Screen/Widgets/podcast_authorinfo.dart';
import 'package:techblog_unique/View/Podcast%20Screen/Widgets/podcast_body.dart';
import 'package:techblog_unique/View/Podcast%20Screen/Widgets/podcast_controlpanel.dart';
import 'package:techblog_unique/View/Podcast%20Screen/Widgets/podcast_poster.dart';
import 'package:techblog_unique/View/Podcast%20Screen/Widgets/podcast_title.dart';

import '../../Global Widgets/loading.dart';

class PodcastScreen extends StatelessWidget {
  late final PodcastScreenController podcastScreenController;
  late final PodcastModel podcastModel;

  PodcastScreen({super.key}) {
    podcastModel = Get.arguments;
    podcastScreenController =
        Get.put(PodcastScreenController(podcastId: podcastModel.id!));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Obx(() => podcastScreenController.loading.value == false
            ? Column(
                children: [
                  //Article Poster
                  PodcastPoster(
                    imageUrl:
                        "podcastScreenController.articleInfo.value.image!",
                  ),
                  //Title
                  PodcastTitle(
                    articleTitle: "  عنوان پادکست",
                  ),
                  //Podcast Author Info
                  PodcastAuthorInfo(
                    author: "ساسان صفری",
                  ),
                  //Podcast Body
                  PodcastBody(),
                  //Podcast Control Panel
                  PodcastControlPanel(
                    size: size,
                  )
                ],
              )
            : SizedBox(height: 750, child: MyLoading())),
      ),
    ));
  }
}
