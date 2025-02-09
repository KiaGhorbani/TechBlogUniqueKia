import 'package:flutter/material.dart';
import 'package:techblog_unique/Constants/Components/Divider/drawer_divider.dart';
import 'package:techblog_unique/Constants/Components/Strings/drawer_strings.dart';
import 'package:techblog_unique/Screens/Global%20Widgets/bottom_navigation.dart';
import 'package:techblog_unique/Screens/Home%20Screen/home_screen.dart';
import 'package:techblog_unique/Screens/Profile%20Screen/profile_screen.dart';
import '../Constants/material_color.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPageIndex = 0;

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
            ListTile(onTap: (){},
              title: Text(DrawerStrings.about),
            ),
            DrawerDivider(size: size),
            ListTile(onTap: (){},
              title: Text(DrawerStrings.share),
            ),
            DrawerDivider(size: size),
            ListTile(onTap: (){},
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
          Positioned.fill(
              child: IndexedStack(
            index: selectedPageIndex,
            children: [
              HomeScreen(size: size),
              ProfileScreen(size: size),
            ],
          )),
          MyBottomNavigation(
            size: size,
            screenHandler: (int value) {
              setState(() {
                selectedPageIndex = value;
              });
            },
          )
        ],
      ),
    ));
  }
}
