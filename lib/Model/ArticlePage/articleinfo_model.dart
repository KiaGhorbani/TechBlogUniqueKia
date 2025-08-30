import '../../Constants/my_api.dart';

class ArticleInfoModel {
  String? id;
  String? title;
  String? content;
  String? image;
  String? catId;
  String? catName;
  String? author;
  String? view;
  String? status;
  String? createdAt;
  bool? isFavorite;


  ArticleInfoModel(this.title, this.image, this.content);

  ArticleInfoModel.fromJson(Map<String, dynamic> item) {
    id = item["info"]["id"];
    title = item["info"]["title"];
    content = item["info"]["content"];
    image = MyApi.hostUrl + item["info"]["image"];
    catId = item["info"]["cat_id"];
    catName = item["info"]["cat_name"];
    author = item["info"]["author"];
    view = item["info"]["view"];
    status = item["info"]["status"];
    createdAt = item["info"]["created_at"];
    isFavorite = item["isFavorite"];
  }
}
