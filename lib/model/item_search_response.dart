import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_search_response.g.dart';
part 'item_search_response.freezed.dart';

@freezed
class ItemSearchResponse with _$ItemSearchResponse{
  factory ItemSearchResponse(
      {@JsonKey(name: 'kind') String? kind,
        @JsonKey(name: 'title') String? title,
        @JsonKey(name: 'htmlTitle') String? htmlTitle,
        @JsonKey(name: 'link') String? link,
        @JsonKey(name: 'displayLink') String? displayLink,
        @JsonKey(name: 'snippet') String? snippet,
        @JsonKey(name: 'htmlSnippet') String? htmlSnippet,
        @JsonKey(name: 'formattedUrl') String? formattedUrl,
        @JsonKey(name: 'htmlFormattedUrl') String? htmlFormattedUrl,
        @JsonKey(name: 'formattedTotalResults') String? formattedTotalResults}) = _ItemSearchResponse;

  factory ItemSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ItemSearchResponseFromJson(json);
}