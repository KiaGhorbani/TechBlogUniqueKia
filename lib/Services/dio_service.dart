import 'dart:developer';

import 'package:dio/dio.dart';

class MyDioService {
  Dio dio = Dio();

  Future<dynamic> get(String url) async {
   return await dio.get(url,
            options: Options(
                contentType: 'application/json',
                responseType: ResponseType.json,
                method: 'GET'))
        .then((response) {
      log(response.toString());
      return response;
    });
  }
}
