import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Home%20Screen/Controller/homescreen_controller.dart';
import '../../../Constants/material_color.dart';

class HomeScreenHottestArticles extends StatelessWidget {
  final Size size;

  HomeScreenHottestArticles({super.key, required this.size});

  final HomeScreenController homeScreenController = Get.find<HomeScreenController>();

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
        //Items
        SizedBox(
          height: size.height / 4.3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
                  () => ListView.builder(
                itemCount: homeScreenController.topArticles.length,
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
                              foregroundDecoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                                  gradient: LinearGradient(
                                      colors: GradientColors.articlesCover,
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                    image: NetworkImage(homeScreenController
                                        .topArticles[index].image!),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                                top: 95,
                                right: 10,
                                child: Text(
                                  homeScreenController.topArticles[index].author!,
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                                )),
                            Positioned(
                                top: 98,
                                right: 95,
                                child: Row(
                                  children: [
                                    Text(
                                      homeScreenController.topArticles[index].view!,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.grey,
                                    )
                                  ],
                                ))
                          ],
                        ),
                        SizedBox(
                          width: size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8, top: 4),
                            child: Text(
                              homeScreenController.topArticles[index].title!,
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
        ),
      ],
    );
  }
}
