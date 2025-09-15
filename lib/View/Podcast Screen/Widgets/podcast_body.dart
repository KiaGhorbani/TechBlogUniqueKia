import 'package:flutter/material.dart';

import '../../../Constants/material_color.dart';


class PodcastBody extends StatelessWidget {
  const PodcastBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 235,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              ImageIcon(
                Image.asset("assets/icons/BluePodcast.png").image,
                size: 25,
                color: SolidColors.colorTitle,
              ),
              SizedBox(width: 5,),
              Text("بخش چهارم: فریلنسر دیوانه"),
              SizedBox(width: 150,),
              Text("22:00")



            ],),
          );



        },),
      )
    );
  }
}
