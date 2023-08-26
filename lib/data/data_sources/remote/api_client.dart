import 'dart:developer';

import 'package:blog_app/data/data_sources/remote/api_constants.dart';
import 'package:blog_app/data/data_sources/remote/api_endpoints.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  void getTags() async {
    final options = BaseOptions(
      baseUrl: ApiConstants.mainUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    final dio = Dio(options);
    dio.interceptors.add(PrettyDioLogger());
    try {
      // debugPrint("==========API REQUEST==========");
      // debugPrint("API REQUEST URL : ${options.baseUrl + ApiEndpoints.tags}");
      var response = await dio.get(ApiEndpoints.tags);
      // debugPrint("==========API Response==========");
      // debugPrint("Status code : ${response.statusCode}");
      // log("API Response data : ${response.data}");
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
    }
  }
}
