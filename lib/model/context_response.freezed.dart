// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'context_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContextResponse _$ContextResponseFromJson(Map<String, dynamic> json) {
  return _ContextResponse.fromJson(json);
}

/// @nodoc
mixin _$ContextResponse {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextResponseCopyWith<ContextResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextResponseCopyWith<$Res> {
  factory $ContextResponseCopyWith(
          ContextResponse value, $Res Function(ContextResponse) then) =
      _$ContextResponseCopyWithImpl<$Res, ContextResponse>;
  @useResult
  $Res call({@JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$ContextResponseCopyWithImpl<$Res, $Val extends ContextResponse>
    implements $ContextResponseCopyWith<$Res> {
  _$ContextResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContextResponseCopyWith<$Res>
    implements $ContextResponseCopyWith<$Res> {
  factory _$$_ContextResponseCopyWith(
          _$_ContextResponse value, $Res Function(_$_ContextResponse) then) =
      __$$_ContextResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$_ContextResponseCopyWithImpl<$Res>
    extends _$ContextResponseCopyWithImpl<$Res, _$_ContextResponse>
    implements _$$_ContextResponseCopyWith<$Res> {
  __$$_ContextResponseCopyWithImpl(
      _$_ContextResponse _value, $Res Function(_$_ContextResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_ContextResponse(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContextResponse implements _ContextResponse {
  _$_ContextResponse({@JsonKey(name: 'title') this.title});

  factory _$_ContextResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContextResponseFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'ContextResponse(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContextResponse &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContextResponseCopyWith<_$_ContextResponse> get copyWith =>
      __$$_ContextResponseCopyWithImpl<_$_ContextResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextResponseToJson(
      this,
    );
  }
}

abstract class _ContextResponse implements ContextResponse {
  factory _ContextResponse({@JsonKey(name: 'title') final String? title}) =
      _$_ContextResponse;

  factory _ContextResponse.fromJson(Map<String, dynamic> json) =
      _$_ContextResponse.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_ContextResponseCopyWith<_$_ContextResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
