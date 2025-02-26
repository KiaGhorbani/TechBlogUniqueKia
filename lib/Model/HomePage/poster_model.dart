class PosterModel {
  String? id;
  String? title;
  String? image;

  PosterModel({
    required this.id,
    required this.title,
    required this.image,
  });

  PosterModel.fromJson(Map<String, dynamic> item) {
    id = item["id"];
    title = item["title"];
    image = item["image"];
  }
}
