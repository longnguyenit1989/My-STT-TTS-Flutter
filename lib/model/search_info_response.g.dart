// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchInfoResponse _$$_SearchInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchInfoResponse(
      searchTime: (json['searchTime'] as num?)?.toDouble(),
      formattedSearchTime: json['formattedSearchTime'] as String?,
      totalResults: json['totalResults'] as String?,
      formattedTotalResults: json['formattedTotalResults'] as String?,
    );

Map<String, dynamic> _$$_SearchInfoResponseToJson(
        _$_SearchInfoResponse instance) =>
    <String, dynamic>{
      'searchTime': instance.searchTime,
      'formattedSearchTime': instance.formattedSearchTime,
      'totalResults': instance.totalResults,
      'formattedTotalResults': instance.formattedTotalResults,
    };
