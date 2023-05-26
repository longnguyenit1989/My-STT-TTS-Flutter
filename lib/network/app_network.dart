

import 'package:dio/dio.dart';
import 'package:prototype_flutter/network/request_data.dart';

const connectTimeout = 30000;
const receiveTimeout = 30000;
const baseURL = "https://customsearch.googleapis.com/";

abstract class AppNetworkInterface {
  Future<Response<T>> get<T>(RequestData requestData);
}

class AppNetwork implements AppNetworkInterface {
  late final Dio dio;

  AppNetwork(){
   dio = _dio();
  }

  @override
  Future<Response<T>> get<T>(RequestData requestData) {
    return dio.get(requestData.path,
        queryParameters: requestData.queryParameters,
        options: Options(headers: requestData.header));
  }

  Dio _dio() {
    var dio = _initDio();
    dio.options.baseUrl = baseURL;
    return dio;
  }

  Dio _initDio() {
    final dio = Dio();
    dio.options.connectTimeout = connectTimeout;
    dio.options.receiveTimeout = receiveTimeout;
    return dio;
  }

}
