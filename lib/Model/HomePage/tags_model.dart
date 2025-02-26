class TagsModel {
  String? id;
  String? title;

  TagsModel({
    required this.id,
    required this.title,
  });

  TagsModel.fromJson(Map<String, dynamic> item) {
    id = item["id"];
    title = item["title"];
  }
}
