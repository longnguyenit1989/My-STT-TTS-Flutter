import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:prototype_flutter/model/context_response.dart';
import 'package:prototype_flutter/model/item_search_response.dart';
import 'package:prototype_flutter/model/queries_response.dart';
import 'package:prototype_flutter/model/search_info_response.dart';
import 'package:prototype_flutter/model/url_response.dart';

part 'search_response.g.dart';
part 'search_response.freezed.dart';

@freezed
class SearchResponse with _$SearchResponse {
  factory SearchResponse({
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'url') URLResponse? url,
    @JsonKey(name: 'queries') QueriesResponse? queries,
    @JsonKey(name: 'context') ContextResponse? context,
    @JsonKey(name: 'searchInformation') SearchInfoResponse? searchInformation,
    @JsonKey(name: 'items') List<ItemSearchResponse>? items,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);
}