import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:prototype_flutter/model/search_error_response.dart';
import 'package:prototype_flutter/model/search_response.dart';
import 'package:prototype_flutter/remote/search_request_data.dart';

import '../network/app_network.dart';

abstract class AppApi {
  Future<Result<SearchResponse, dynamic>> search(String queries, int? start);
}

class AppApiImp extends AppApi {

  final AppNetworkInterface client = AppNetwork();

  @override
  Future<Result<SearchResponse, dynamic>> search(
      String queries, int? start) async {
    try {
      final response = await client
          .get(SearchRequestData(queries: queries, startIndex: start));
      final obj = SearchResponse.fromJson(response.data);
      return Success(obj);
    } on DioError catch (e) {
      try {
        final obj = SearchErrorResponse.fromJson(e.response?.data);
        return Error(obj);
      } catch (e) {
        return Error(e);
      }
    } catch (e) {
      return Error(e);
    }
  }
}