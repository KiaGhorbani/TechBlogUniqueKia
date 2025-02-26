import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:techblog_unique/Constants/Components/Divider/drawer_divider.dart';
import 'package:techblog_unique/Constants/Components/Strings/drawer_strings.dart';
import 'package:techblog_unique/Constants/url_launcher.dart';
import '../Constants/material_color.dart';
import 'Global Widgets/bottom_navigation.dart';
import 'Home Screen/home_screen.dart';
import 'Profile Screen/profile_screen.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class MainScreen extends StatelessWidget {
  final RxInt selectedPageIndex = 0.obs;

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      key: _key,
      drawer: Drawer(
        backgroundColor: SolidColors.scaffoldBg,
        child: ListView(
          children: [
            DrawerHeader(child: Image.asset("assets/images/Logo.png",scale: 2,)),
            ListTile(onTap: (){},
            title: Text(DrawerStrings.profile),
            ),
            DrawerDivider(size: size),
            ListTile(onTap: (){
                myUrlLauncher(DrawerStrings.aboutUrl);
            },
              title: Text(DrawerStrings.about),
            ),
            DrawerDivider(size: size),
            ListTile(onTap: () async{
              await Share.share(DrawerStrings.shareUrl);
            },
              title: Text(DrawerStrings.share),
            ),
            DrawerDivider(size: size),
            ListTile(onTap: () async{

              myUrlLauncher(DrawerStrings.gitHubUrl);

            },
              title: Text(DrawerStrings.gitHub),
            )


          ],
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: SolidColors.scaffoldBg,
          automaticallyImplyLeading: false,
          title:
          Padding(
            padding: const EdgeInsets.all(8.0),
            //AppBar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                        _key.currentState!.openDrawer();
                    },
                    child: Icon(Icons.menu_sharp)),
                Image.asset(
                  'assets/images/Logo.png',
                  width: size.width / 3.7,
                ),
                Icon(Icons.search_sharp)
              ],
            ),
          )
      ),

      body: Stack(
        children: [
          Obx(
          ()=> Positioned.fill(
                child: IndexedStack(
              index: selectedPageIndex.value,
              children: [
                HomeScreen(size: size),
                ProfileScreen(size: size),
              ],
            )),
          ),
          MyBottomNavigation(
            size: size,
            screenHandler: (int value) {

                selectedPageIndex.value = value;

            },
          )
        ],
      ),
    ));
  }
}
