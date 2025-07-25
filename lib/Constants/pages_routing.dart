import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20Screen/Binding/article_binding.dart';
import 'package:techblog_unique/View/Article%20Screen/article_screen.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/Binding/managearticle_binding.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/managearticle_screen.dart';
import 'package:techblog_unique/View/Register%20Screen/Bindings/register_binding.dart';
import 'package:techblog_unique/View/main_screen.dart';

class MyRoutes{
  static String mainScreen = '/MainScreen';
  static String articleScreen = '/ArticleScreen';
  static String manageArticleScreen = '/ManageArticleScreen';

 static List<GetPage> myViews =[

    GetPage(name: mainScreen, page: ()=> MainScreen(), binding: RegisterBinding()),
    GetPage(name: articleScreen, page: ()=> ArticleScreen(), binding: ArticleBindings()),
    GetPage(name: manageArticleScreen, page: ()=> ManageArticleScreen(), binding: ManageArticleBinding()),




  ];







}