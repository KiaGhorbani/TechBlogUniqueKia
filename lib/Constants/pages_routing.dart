import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20Screen/Binding/article_binding.dart';
import 'package:techblog_unique/View/Article%20Screen/article_screen.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/Binding/managearticle_binding.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/managearticle_screen.dart';
import 'package:techblog_unique/View/Podcast%20Screen/podcast_screen.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Binding/postarticle_binding.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/postarticle_screen.dart';
import 'package:techblog_unique/View/Register%20Screen/Bindings/register_binding.dart';
import 'package:techblog_unique/View/main_screen.dart';

class MyRoutes {
  static String mainScreen = '/MainScreen';
  static String articleScreen = '/ArticleScreen';
  static String manageArticleScreen = '/ManageArticleScreen';
  static String postArticleScreen = '/PostArticleScreen';
  static String podcastScreen = '/PodcastScreen';

  static List<GetPage> myViews = [
    GetPage(
        name: mainScreen, page: () => MainScreen(), binding: RegisterBinding()),
    GetPage(
        name: articleScreen,
        page: () => ArticleScreen(),
        binding: ArticleBindings()),
    GetPage(
        name: manageArticleScreen,
        page: () => ManageArticleScreen(),
        binding: ManageArticleBinding()),
    GetPage(
        name: postArticleScreen,
        page: () => PostArticleScreen(),
        binding: PostArticleBinding()),
    GetPage(
        name: podcastScreen,
        page: () => PodcastScreen(),
    ),
  ];
}
