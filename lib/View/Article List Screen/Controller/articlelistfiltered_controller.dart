import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techblog_unique/Model/HomePage/article_model.dart';

import '../../../Constants/my_api.dart';
import '../../../Constants/storage.dart';
import '../../../Services/dio_service.dart';

class ArticleListFilteredController extends GetxController {
  RxList<ArticleModel> articleList = RxList();
  RxBool loading = false.obs;

  void getArticleListItemsByTags({required String tagId}) async {
    loading.value = true;


    dynamic response = await MyDioService().get(
        "${MyApi.baseUrl}article/get.php?command=get_articles_with_tag_id&tag_id=$tagId&user_id=${GetStorage().read(MyStorage.userId)}");

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
