import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techblog_unique/Constants/pages_routing.dart';
import 'package:techblog_unique/Model/ArticlePage/articleinfo_model.dart';
import 'package:techblog_unique/Model/HomePage/article_model.dart';
import 'package:techblog_unique/Model/HomePage/tags_model.dart';


import '../../../Constants/my_api.dart';
import '../../../Constants/storage.dart';
import '../../../Services/dio_service.dart';

class ArticleScreenController extends GetxController {
  Rx<ArticleInfoModel> articleInfo = ArticleInfoModel('','','').obs;
  RxList<TagsModel> relatedTags = RxList();
  RxList<ArticleModel> relatedArticles = RxList();

  RxBool loading = false.obs;

  void getArticleInfo({required String articleId}) async {
    loading.value = true;


    dynamic response = await MyDioService().get(
        "${MyUrl.baseUrl}article/get.php?command=info&id=$articleId&user_id=${GetStorage().read(MyStorage.userId)}");

    if (response.statusCode == 200) {
      articleInfo.value = ArticleInfoModel.fromJson(response.data);
    }

    relatedTags.clear();
    if (response.statusCode == 200) {
      response.data['tags'].forEach((item) {
        relatedTags.add(TagsModel.fromJson(item));
      });
    }

    relatedArticles.clear();
    if (response.statusCode == 200) {
      response.data['related'].forEach((item) {
        relatedArticles.add(ArticleModel.fromJson(item));
      });
    }

    loading.value = false;
    Get.toNamed(MyRoutes.articleScreen);
  }
}
