import 'package:techblog_unique/Constants/my_api.dart';

class ArticleModel {
  String? id;
  String? title;
  String? image;
  String? catId;
  String? catName;
  String? author;
  String? view;
  String? status;
  String? createdAt;

  ArticleModel({
    required this.id,
    required this.title,
    required this.image,
    required this.catId,
    required this.catName,
    required this.author,
    required this.view,
    required this.status,
    required this.createdAt,
  });

  ArticleModel.fromJson(Map<String, dynamic> item) {
    id = item["id"];
    title = item["title"];
    image = MyApi.hostUrl + item["image"];
    catId = item["cat_id"];
    catName = item["cat_name"];
    author = item["author"];
    view = item["view"];
    status = item["status"];
    createdAt = item["created_at"];
  }
}
