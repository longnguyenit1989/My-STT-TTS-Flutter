import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_response.g.dart';
part 'url_response.freezed.dart';

@freezed
class URLResponse with _$URLResponse{
  factory URLResponse(
      {@JsonKey(name: 'type') String? type,
        @JsonKey(name: 'template') String? template}) = _URLResponse;

  factory URLResponse.fromJson(Map<String, dynamic> json) =>
      _$$_URLResponseFromJson(json);
}