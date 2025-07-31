import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techblog_unique/Constants/storage.dart';
import 'package:techblog_unique/Model/HomePage/article_model.dart';

import '../../../Constants/my_api.dart';
import '../../../Services/dio_service.dart';

class ManageArticleController extends GetxController {
  RxList<ArticleModel> publishedArticles = RxList.empty();
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getManagedArticles();
  }

  void getManagedArticles() async {
    loading.value = true;

    dynamic response = await MyDioService()
        .get(MyApi.publishingArticles + GetStorage().read(MyStorage.userId));

    if (response.statusCode == 200) {
      //Manage Article List Articles
      response.data.forEach((item) {
        publishedArticles.add(ArticleModel.fromJson(item));
      });

      loading.value = false;
    }
  }
}
