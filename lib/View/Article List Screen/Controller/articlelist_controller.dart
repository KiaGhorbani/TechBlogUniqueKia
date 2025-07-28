import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techblog_unique/Constants/storage.dart';
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

    dynamic response = await MyDioService().get(MyApi.articleListItems+GetStorage().read(MyStorage.userId));

    if (response.statusCode == 200) {
      //Article List Page Articles
      response.data.forEach((item) {
        articleList.add(ArticleModel.fromJson(item));
      });

      loading.value = false;
    }
  }

}
