// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueriesResponse _$$_QueriesResponseFromJson(Map<String, dynamic> json) =>
    _$_QueriesResponse(
      previousPage: (json['previousPage'] as List<dynamic>?)
          ?.map((e) => QueriesDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      request: (json['request'] as List<dynamic>?)
          ?.map((e) => QueriesDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPage: (json['nextPage'] as List<dynamic>?)
          ?.map((e) => QueriesDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QueriesResponseToJson(_$_QueriesResponse instance) =>
    <String, dynamic>{
      'previousPage': instance.previousPage,
      'request': instance.request,
      'nextPage': instance.nextPage,
    };

_$_QueriesDataResponse _$$_QueriesDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_QueriesDataResponse(
      type: json['title'] as String?,
      totalResults: json['totalResults'] as String?,
      searchTerms: json['searchTerms'] as String?,
      count: json['count'] as int?,
      startIndex: json['startIndex'] as int?,
      inputEncoding: json['inputEncoding'] as String?,
      outputEncoding: json['outputEncoding'] as String?,
      safe: json['safe'] as String?,
      cx: json['cx'] as String?,
    );

Map<String, dynamic> _$$_QueriesDataResponseToJson(
        _$_QueriesDataResponse instance) =>
    <String, dynamic>{
      'title': instance.type,
      'totalResults': instance.totalResults,
      'searchTerms': instance.searchTerms,
      'count': instance.count,
      'startIndex': instance.startIndex,
      'inputEncoding': instance.inputEncoding,
      'outputEncoding': instance.outputEncoding,
      'safe': instance.safe,
      'cx': instance.cx,
    };
