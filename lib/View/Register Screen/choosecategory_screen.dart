import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog_unique/Constants/Components/Strings/registerpage_strings.dart';

import '../../Constants/fake_datas.dart';
import '../../Constants/material_color.dart';
import 'Widgets/techtextfield.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({super.key});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //TechBot
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset("assets/images/TechBot.svg",
                  width: size.width / 3.5, height: size.height / 6.8),
            ),
            //Congrats intro
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: RegisterPageStrings.congrats,
                      style: TextStyle(color: Colors.black))),
            ),
            //TextField
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: TechTextField(hintText: RegisterPageStrings.name),
            ),
            SizedBox(
              height: 30,
            ),
            //Choose Categories
            Text(RegisterPageStrings.chooseCategories),
            //Categories List
            SizedBox(
            width: double.infinity,
            height: 85,
            child: GridView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: tagsList.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.25),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if(!selectedTags.contains(tagsList[index])) {
                        selectedTags.add(tagsList[index]);
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0 , right: 8, left: 8),
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
                              tagsList[index].title,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),




                  ),
                );
              },
            ),
          ),
            SizedBox(height: 35,),
            //Arrow Icon
            Image.asset("assets/images/Arrow.png",scale: 2,),
            SizedBox(height: 35,),
            //Selected Categories List
            SizedBox(
              width: double.infinity,
              height: 85,
              child: GridView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: selectedTags.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.25),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTags.removeAt(index);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            color: SolidColors.selectedCategoryColor,
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                selectedTags[index].title,
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Icon(
                              Icons.delete,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),
    ));
  }
}
