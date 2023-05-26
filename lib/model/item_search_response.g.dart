// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemSearchResponse _$$_ItemSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ItemSearchResponse(
      kind: json['kind'] as String?,
      title: json['title'] as String?,
      htmlTitle: json['htmlTitle'] as String?,
      link: json['link'] as String?,
      displayLink: json['displayLink'] as String?,
      snippet: json['snippet'] as String?,
      htmlSnippet: json['htmlSnippet'] as String?,
      formattedUrl: json['formattedUrl'] as String?,
      htmlFormattedUrl: json['htmlFormattedUrl'] as String?,
      formattedTotalResults: json['formattedTotalResults'] as String?,
    );

Map<String, dynamic> _$$_ItemSearchResponseToJson(
        _$_ItemSearchResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'title': instance.title,
      'htmlTitle': instance.htmlTitle,
      'link': instance.link,
      'displayLink': instance.displayLink,
      'snippet': instance.snippet,
      'htmlSnippet': instance.htmlSnippet,
      'formattedUrl': instance.formattedUrl,
      'htmlFormattedUrl': instance.htmlFormattedUrl,
      'formattedTotalResults': instance.formattedTotalResults,
    };
