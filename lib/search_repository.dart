import 'package:multiple_result/multiple_result.dart';
import 'package:prototype_flutter/remote/app_api.dart';

import 'model/search_response.dart';

abstract class SearchRepository {
  Future<Result<SearchResponse, dynamic>> search(String queries, int? start);
}

class SearchRepositoryImp extends SearchRepository {
  final AppApi appApi = AppApiImp();

  @override
  Future<Result<SearchResponse, dynamic>> search(String queries, int? start) {
    return appApi.search(queries, start);
  }
}