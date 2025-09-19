
class PodcastFileModel {
  String? id;
  String? podcastId;
  String? file;
  String? title;
  String? length;

  PodcastFileModel();

  PodcastFileModel.fromJson(Map<String, dynamic> item) {
    id = item["id"];
    podcastId = item["podcast_id"];
    file = item["file"];
    title = item["title"];
    length = item["length"];
  }
}
