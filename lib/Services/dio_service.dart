import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio_fm;

class MyDioService {
  Dio dio = Dio();

  Future<dynamic> get(String url) async {
    return await dio
        .get(url,
            options: Options(
                contentType: 'application/json',
                responseType: ResponseType.json,
                method: 'GET'))
        .then((response) {
      log(response.toString());
      return response;
    });
  }

  Future<dynamic> post(Map<String, dynamic> dataMap, String url) async {
    return await dio
        .post(url,
            data: dio_fm.FormData.fromMap(dataMap),
            options: Options(
                contentType: 'application/json',
                responseType: ResponseType.json,
                method: 'POST'))
        .then((response) {
          log(response.headers.toString());
          log(response.data.toString());
          log(response.statusCode.toString());
      return response;
    });
  }
}
