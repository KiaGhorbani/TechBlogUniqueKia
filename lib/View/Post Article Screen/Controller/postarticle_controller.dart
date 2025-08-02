import 'package:get/get.dart';

import 'package:techblog_unique/Model/HomePage/article_model.dart';


class PostArticleController extends GetxController {
  Rx<ArticleModel> article =ArticleModel().obs;

  RxBool loading = false.obs;






}
