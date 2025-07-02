import 'package:get/get.dart';
import 'package:techblog_unique/Model/HomePage/article_model.dart';

import '../../../Constants/my_api.dart';
import '../../../Services/dio_service.dart';

class ArticleListController extends GetxController {
  RxList<ArticleModel> articleList = RxList();
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getArticleListItems();
  }

  void getArticleListItems() async {
    loading.value = true;

    //TODO user id from get storage
    dynamic response = await MyDioService().get(MyApi.articleListItems);

    articleList.clear();
    if (response.statusCode == 200) {
      //Article List Page Articles
      response.data.forEach((item) {
        articleList.add(ArticleModel.fromJson(item));
      });

      loading.value = false;
    }
  }

  void getArticleListItemsByTags(String tagId) async {
    loading.value = true;



    //TODO user id from get storage
    dynamic response = await MyDioService().get(
        "${MyApi.baseUrl}article/get.php?command=get_articles_with_tag_id&tag_id=$tagId&user_id=1");

    articleList.clear();
    if (response.statusCode == 200) {
      //Article List Page Articles
      response.data.forEach((item) {
        articleList.add(ArticleModel.fromJson(item));
      });

      loading.value = false;
    }
  }
}
