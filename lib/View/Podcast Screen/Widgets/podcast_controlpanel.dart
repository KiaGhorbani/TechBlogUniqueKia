
import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';
import 'package:techblog_unique/Constants/material_color.dart';

class PodcastControlPanel extends StatelessWidget {
  const PodcastControlPanel({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        height: size.height / 7,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: GradientColors.bottomNavigation,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
            borderRadius: BorderRadius.all(Radius.circular(22))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LinearPercentIndicator(
                    percent: 1.0,
                    backgroundColor: Colors.white,
                    progressColor: Colors.orange,

                  ),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                    Icon(Icons.skip_next, color: Colors.white,size: 40,),
                    Icon(Icons.play_circle, color: Colors.white, size: 48,),
                    Icon(Icons.skip_previous, color: Colors.white,size: 40,),
                    Expanded(child: SizedBox()),
                    Icon(Icons.repeat, color: Colors.white,size: 40,),
                      SizedBox(width: 15,),



                  ],)



                ],
              ),


      ),
    );
  }
}
