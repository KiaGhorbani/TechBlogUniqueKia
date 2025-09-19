import 'package:get/get.dart';
import 'package:techblog_unique/Constants/my_api.dart';
import 'package:techblog_unique/Model/PodcastPage/podcastfile_model.dart';
import 'package:techblog_unique/Services/dio_service.dart';

class PodcastScreenController extends GetxController {
  String podcastId;

  PodcastScreenController({required this.podcastId});

  RxList<PodcastFileModel> podcastEpisodeList = RxList();
  RxBool loading = false.obs;

  void getPodcastEpisodes() async {
    loading.value = true;

    dynamic response = await MyDioService().get(MyUrl.podcastItems + podcastId);

    if (response.statusCode == 200) {
      for (var element in response.data["files"]) {
        podcastEpisodeList.add(PodcastFileModel.fromJson(element));
      }
      loading.value = false;
    }
  }
}
