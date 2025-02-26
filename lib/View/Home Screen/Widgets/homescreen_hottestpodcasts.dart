import 'package:flutter/material.dart';

import '../../../Constants/material_color.dart';

class HomeScreenHottestPodcasts extends StatelessWidget {
  const HomeScreenHottestPodcasts({super.key, required this.size});

  final Size size;

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
    );
  }
}
