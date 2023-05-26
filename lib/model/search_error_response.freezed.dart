// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchErrorResponse _$SearchErrorResponseFromJson(Map<String, dynamic> json) {
  return _SearchErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchErrorResponse {
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchErrorResponseCopyWith<SearchErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchErrorResponseCopyWith<$Res> {
  factory $SearchErrorResponseCopyWith(
          SearchErrorResponse value, $Res Function(SearchErrorResponse) then) =
      _$SearchErrorResponseCopyWithImpl<$Res, SearchErrorResponse>;
  @useResult
  $Res call({@JsonKey(name: 'error') String? error});
}

/// @nodoc
class _$SearchErrorResponseCopyWithImpl<$Res, $Val extends SearchErrorResponse>
    implements $SearchErrorResponseCopyWith<$Res> {
  _$SearchErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchErrorResponseCopyWith<$Res>
    implements $SearchErrorResponseCopyWith<$Res> {
  factory _$$_SearchErrorResponseCopyWith(_$_SearchErrorResponse value,
          $Res Function(_$_SearchErrorResponse) then) =
      __$$_SearchErrorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'error') String? error});
}

/// @nodoc
class __$$_SearchErrorResponseCopyWithImpl<$Res>
    extends _$SearchErrorResponseCopyWithImpl<$Res, _$_SearchErrorResponse>
    implements _$$_SearchErrorResponseCopyWith<$Res> {
  __$$_SearchErrorResponseCopyWithImpl(_$_SearchErrorResponse _value,
      $Res Function(_$_SearchErrorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_SearchErrorResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchErrorResponse implements _SearchErrorResponse {
  _$_SearchErrorResponse({@JsonKey(name: 'error') this.error});

  factory _$_SearchErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchErrorResponseFromJson(json);

  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'SearchErrorResponse(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchErrorResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchErrorResponseCopyWith<_$_SearchErrorResponse> get copyWith =>
      __$$_SearchErrorResponseCopyWithImpl<_$_SearchErrorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchErrorResponseToJson(
      this,
    );
  }
}

abstract class _SearchErrorResponse implements SearchErrorResponse {
  factory _SearchErrorResponse({@JsonKey(name: 'error') final String? error}) =
      _$_SearchErrorResponse;

  factory _SearchErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchErrorResponse.fromJson;

  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SearchErrorResponseCopyWith<_$_SearchErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponse {
  @JsonKey(name: 'code')
  int? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  List<ErrorsResponse>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res, ErrorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? error,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'errors') List<ErrorsResponse>? errors,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res, $Val extends ErrorResponse>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? errors = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorsResponse>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorResponseCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$$_ErrorResponseCopyWith(
          _$_ErrorResponse value, $Res Function(_$_ErrorResponse) then) =
      __$$_ErrorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? error,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'errors') List<ErrorsResponse>? errors,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$_ErrorResponseCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res, _$_ErrorResponse>
    implements _$$_ErrorResponseCopyWith<$Res> {
  __$$_ErrorResponseCopyWithImpl(
      _$_ErrorResponse _value, $Res Function(_$_ErrorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? errors = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ErrorResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorsResponse>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResponse implements _ErrorResponse {
  _$_ErrorResponse(
      {@JsonKey(name: 'code') this.error,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'errors') final List<ErrorsResponse>? errors,
      @JsonKey(name: 'status') this.status})
      : _errors = errors;

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorResponseFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? error;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<ErrorsResponse>? _errors;
  @override
  @JsonKey(name: 'errors')
  List<ErrorsResponse>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'ErrorResponse(error: $error, message: $message, errors: $errors, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(_errors), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorResponseCopyWith<_$_ErrorResponse> get copyWith =>
      __$$_ErrorResponseCopyWithImpl<_$_ErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorResponseToJson(
      this,
    );
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  factory _ErrorResponse(
      {@JsonKey(name: 'code') final int? error,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'errors') final List<ErrorsResponse>? errors,
      @JsonKey(name: 'status') final String? status}) = _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get error;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'errors')
  List<ErrorsResponse>? get errors;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorResponseCopyWith<_$_ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorsResponse _$ErrorsResponseFromJson(Map<String, dynamic> json) {
  return _ErrorsResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorsResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'domain')
  String? get domain => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsResponseCopyWith<ErrorsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsResponseCopyWith<$Res> {
  factory $ErrorsResponseCopyWith(
          ErrorsResponse value, $Res Function(ErrorsResponse) then) =
      _$ErrorsResponseCopyWithImpl<$Res, ErrorsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'domain') String? domain,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class _$ErrorsResponseCopyWithImpl<$Res, $Val extends ErrorsResponse>
    implements $ErrorsResponseCopyWith<$Res> {
  _$ErrorsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? domain = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorsResponseCopyWith<$Res>
    implements $ErrorsResponseCopyWith<$Res> {
  factory _$$_ErrorsResponseCopyWith(
          _$_ErrorsResponse value, $Res Function(_$_ErrorsResponse) then) =
      __$$_ErrorsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'domain') String? domain,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class __$$_ErrorsResponseCopyWithImpl<$Res>
    extends _$ErrorsResponseCopyWithImpl<$Res, _$_ErrorsResponse>
    implements _$$_ErrorsResponseCopyWith<$Res> {
  __$$_ErrorsResponseCopyWithImpl(
      _$_ErrorsResponse _value, $Res Function(_$_ErrorsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? domain = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_ErrorsResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorsResponse implements _ErrorsResponse {
  _$_ErrorsResponse(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'domain') this.domain,
      @JsonKey(name: 'reason') this.reason});

  factory _$_ErrorsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsResponseFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'domain')
  final String? domain;
  @override
  @JsonKey(name: 'reason')
  final String? reason;

  @override
  String toString() {
    return 'ErrorsResponse(message: $message, domain: $domain, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorsResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, domain, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorsResponseCopyWith<_$_ErrorsResponse> get copyWith =>
      __$$_ErrorsResponseCopyWithImpl<_$_ErrorsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorsResponseToJson(
      this,
    );
  }
}

abstract class _ErrorsResponse implements ErrorsResponse {
  factory _ErrorsResponse(
      {@JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'domain') final String? domain,
      @JsonKey(name: 'reason') final String? reason}) = _$_ErrorsResponse;

  factory _ErrorsResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorsResponse.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'domain')
  String? get domain;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorsResponseCopyWith<_$_ErrorsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
