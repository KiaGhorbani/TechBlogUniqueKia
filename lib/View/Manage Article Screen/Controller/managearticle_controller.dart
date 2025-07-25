import 'package:get/get.dart';
import 'package:techblog_unique/Model/HomePage/article_model.dart';

class ManageArticleController extends GetxController {
  RxList<ArticleModel> publishedArticles = RxList.empty();

  void getPublishedArticles() {}
}
