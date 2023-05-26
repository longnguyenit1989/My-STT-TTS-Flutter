// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      kind: json['kind'] as String?,
      url: json['url'] == null
          ? null
          : URLResponse.fromJson(json['url'] as Map<String, dynamic>),
      queries: json['queries'] == null
          ? null
          : QueriesResponse.fromJson(json['queries'] as Map<String, dynamic>),
      context: json['context'] == null
          ? null
          : ContextResponse.fromJson(json['context'] as Map<String, dynamic>),
      searchInformation: json['searchInformation'] == null
          ? null
          : SearchInfoResponse.fromJson(
              json['searchInformation'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemSearchResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'url': instance.url,
      'queries': instance.queries,
      'context': instance.context,
      'searchInformation': instance.searchInformation,
      'items': instance.items,
    };
