import 'package:get/get.dart';
import 'package:techblog_unique/Constants/my_api.dart';
import 'package:techblog_unique/Model/HomePage/article_model.dart';
import 'package:techblog_unique/Model/HomePage/podcast_model.dart';
import 'package:techblog_unique/Model/HomePage/poster_model.dart';
import 'package:techblog_unique/Model/HomePage/tags_model.dart';
import 'package:techblog_unique/Services/dio_service.dart';

class HomeScreenController extends GetxController {
  late Rx<PosterModel> poster;
  RxList<ArticleModel> topArticles = RxList();
  RxList<PodcastModel> topPodcasts = RxList();
  RxList<TagsModel> homePageTags = RxList();

  @override
  void onInit() {
    super.onInit();
    getHomeItems();
  }

  void getHomeItems() async {
    var response = await MyDioService().get(MyApi.homeItems);

    if (response.statusCode == 200) {
      response.data['top_visited'].forEach((item) {
        topArticles.add(ArticleModel.fromJson(item));
      });
    }
  }
}
