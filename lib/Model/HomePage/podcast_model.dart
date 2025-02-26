class PodcastModel {
  String? id;
  String? title;
  String? poster;
  String? catName;
  String? author;
  String? view;
  String? status;
  String? createdAt;

  PodcastModel({
    required this.id,
    required this.title,
    required this.poster,
    required this.catName,
    required this.author,
    required this.view,
    required this.status,
    required this.createdAt,
  });

  PodcastModel.fromJson(Map<String, dynamic> item) {
    id = item["id"];
    title = item["title"];
    poster = item["poster"];
    catName = item["cat_name"];
    author = item["author"];
    view = item["view"];
    status = item["status"];
    createdAt = item["created_at"];
  }
}
