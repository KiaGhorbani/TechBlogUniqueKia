import 'package:flutter/material.dart';

import '../../../Constants/material_color.dart';

class HomescreenHottestblogs extends StatelessWidget {
  const HomescreenHottestblogs({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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





    ],);
  }
}
