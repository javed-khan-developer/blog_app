import 'dart:developer';

import 'package:blog_app/data/data_sources/remote/api_constants.dart';
import 'package:blog_app/data/data_sources/remote/api_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;
  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstants.mainUrl);
    dio = Dio(baseOptions);
  }

  ///For Get Request
  Future<Response> getRequest({required String path}) async {
    try {
      debugPrint("==========API REQUEST==========");
      debugPrint("API REQUEST URL : ${baseOptions.baseUrl + path}");
      var response = await dio.get(path);
      debugPrint("==========API Response==========");
      debugPrint("Status code : ${response.statusCode}");
      Vx.log("API Response data : ${response.data}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiExceptions(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
      throw ApiExceptions(message: e.response!.statusMessage);
    }
  }

  ///For Post Request
  Future<Response> postRequest(
      {required String path, required dynamic body}) async {
    final options = Options(
      headers: {
        "authorization": "Bearer 98|QnY3i6JrAjvEuLUexFhqHFI48ZhXi7ihx2Op13QA",
      },
    );
    try {
      debugPrint("==========API REQUEST==========");
      debugPrint("API REQUEST URL : ${baseOptions.baseUrl + path}");
      var response = await dio.post(path, data: body, options: options);
      debugPrint("==========API Response==========");
      debugPrint("Status code : ${response.statusCode}");
      log("API Response data : ${response.data}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiExceptions(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
      throw ApiExceptions(message: e.response!.statusMessage);
    }
  }
}
