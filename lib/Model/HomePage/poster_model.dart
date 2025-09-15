import 'package:techblog_unique/Constants/my_api.dart';

class PosterModel {
  String? id;
  String? title;
  String? image;

  PosterModel({
    this.id,
    this.title,
    this.image,
  });

  PosterModel.fromJson(Map<String, dynamic> item) {
    id = item["id"];
    title = item["title"];
    image = MyUrl.hostUrl + item["image"];
  }
}
