// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchErrorResponse _$$_SearchErrorResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchErrorResponse(
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_SearchErrorResponseToJson(
        _$_SearchErrorResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_ErrorResponse _$$_ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_ErrorResponse(
      error: json['code'] as int?,
      message: json['message'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.error,
      'message': instance.message,
      'errors': instance.errors,
      'status': instance.status,
    };

_$_ErrorsResponse _$$_ErrorsResponseFromJson(Map<String, dynamic> json) =>
    _$_ErrorsResponse(
      message: json['message'] as String?,
      domain: json['domain'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_ErrorsResponseToJson(_$_ErrorsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'domain': instance.domain,
      'reason': instance.reason,
    };
