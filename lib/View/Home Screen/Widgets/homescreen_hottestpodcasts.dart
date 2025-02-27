import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../../Constants/material_color.dart';
import '../Controller/homescreen_controller.dart';

class HomeScreenHottestPodcasts extends StatelessWidget {
  HomeScreenHottestPodcasts({super.key, required this.size});

  final Size size;
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Title
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
        //Items
        SizedBox(
          height: size.height / 4.3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
              () => ListView.builder(
                itemCount: homeScreenController.topPodcasts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height / 7,
                          width: size.width / 2.5,
                          child: CachedNetworkImage(
                            imageUrl:
                                homeScreenController.topPodcasts[index].poster!,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover)),
                            ),
                            errorWidget: (context, url, error) => Icon(
                              Icons.image_not_supported_rounded,
                              size: 32,
                              color: Colors.grey,
                            ),
                            placeholder: (context, url) => SpinKitHourGlass(
                              color: SolidColors.primaryColor,
                              size: 32,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                homeScreenController.topPodcasts[index].title!),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
