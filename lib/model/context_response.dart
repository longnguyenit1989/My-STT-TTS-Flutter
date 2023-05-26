import 'package:freezed_annotation/freezed_annotation.dart';

part 'context_response.g.dart';
part 'context_response.freezed.dart';

@freezed
class ContextResponse with _$ContextResponse{
  factory ContextResponse(
      {@JsonKey(name: 'title') String? title}) = _ContextResponse;

  factory ContextResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContextResponseFromJson(json);
}