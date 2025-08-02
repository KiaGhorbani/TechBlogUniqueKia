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
    this.id,
    this.title,
    this.image,
    this.catId,
    this.catName,
    this.author,
    this.view,
    this.status,
    this.createdAt,
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
