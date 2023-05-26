// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queries_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueriesResponse _$QueriesResponseFromJson(Map<String, dynamic> json) {
  return _QueriesResponse.fromJson(json);
}

/// @nodoc
mixin _$QueriesResponse {
  @JsonKey(name: 'previousPage')
  List<QueriesDataResponse>? get previousPage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'request')
  List<QueriesDataResponse>? get request => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextPage')
  List<QueriesDataResponse>? get nextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueriesResponseCopyWith<QueriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueriesResponseCopyWith<$Res> {
  factory $QueriesResponseCopyWith(
          QueriesResponse value, $Res Function(QueriesResponse) then) =
      _$QueriesResponseCopyWithImpl<$Res, QueriesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'previousPage') List<QueriesDataResponse>? previousPage,
      @JsonKey(name: 'request') List<QueriesDataResponse>? request,
      @JsonKey(name: 'nextPage') List<QueriesDataResponse>? nextPage});
}

/// @nodoc
class _$QueriesResponseCopyWithImpl<$Res, $Val extends QueriesResponse>
    implements $QueriesResponseCopyWith<$Res> {
  _$QueriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousPage = freezed,
    Object? request = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      previousPage: freezed == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as List<QueriesDataResponse>?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as List<QueriesDataResponse>?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as List<QueriesDataResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueriesResponseCopyWith<$Res>
    implements $QueriesResponseCopyWith<$Res> {
  factory _$$_QueriesResponseCopyWith(
          _$_QueriesResponse value, $Res Function(_$_QueriesResponse) then) =
      __$$_QueriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'previousPage') List<QueriesDataResponse>? previousPage,
      @JsonKey(name: 'request') List<QueriesDataResponse>? request,
      @JsonKey(name: 'nextPage') List<QueriesDataResponse>? nextPage});
}

/// @nodoc
class __$$_QueriesResponseCopyWithImpl<$Res>
    extends _$QueriesResponseCopyWithImpl<$Res, _$_QueriesResponse>
    implements _$$_QueriesResponseCopyWith<$Res> {
  __$$_QueriesResponseCopyWithImpl(
      _$_QueriesResponse _value, $Res Function(_$_QueriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousPage = freezed,
    Object? request = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_$_QueriesResponse(
      previousPage: freezed == previousPage
          ? _value._previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as List<QueriesDataResponse>?,
      request: freezed == request
          ? _value._request
          : request // ignore: cast_nullable_to_non_nullable
              as List<QueriesDataResponse>?,
      nextPage: freezed == nextPage
          ? _value._nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as List<QueriesDataResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueriesResponse implements _QueriesResponse {
  _$_QueriesResponse(
      {@JsonKey(name: 'previousPage')
          final List<QueriesDataResponse>? previousPage,
      @JsonKey(name: 'request')
          final List<QueriesDataResponse>? request,
      @JsonKey(name: 'nextPage')
          final List<QueriesDataResponse>? nextPage})
      : _previousPage = previousPage,
        _request = request,
        _nextPage = nextPage;

  factory _$_QueriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QueriesResponseFromJson(json);

  final List<QueriesDataResponse>? _previousPage;
  @override
  @JsonKey(name: 'previousPage')
  List<QueriesDataResponse>? get previousPage {
    final value = _previousPage;
    if (value == null) return null;
    if (_previousPage is EqualUnmodifiableListView) return _previousPage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QueriesDataResponse>? _request;
  @override
  @JsonKey(name: 'request')
  List<QueriesDataResponse>? get request {
    final value = _request;
    if (value == null) return null;
    if (_request is EqualUnmodifiableListView) return _request;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QueriesDataResponse>? _nextPage;
  @override
  @JsonKey(name: 'nextPage')
  List<QueriesDataResponse>? get nextPage {
    final value = _nextPage;
    if (value == null) return null;
    if (_nextPage is EqualUnmodifiableListView) return _nextPage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QueriesResponse(previousPage: $previousPage, request: $request, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueriesResponse &&
            const DeepCollectionEquality()
                .equals(other._previousPage, _previousPage) &&
            const DeepCollectionEquality().equals(other._request, _request) &&
            const DeepCollectionEquality().equals(other._nextPage, _nextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_previousPage),
      const DeepCollectionEquality().hash(_request),
      const DeepCollectionEquality().hash(_nextPage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueriesResponseCopyWith<_$_QueriesResponse> get copyWith =>
      __$$_QueriesResponseCopyWithImpl<_$_QueriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueriesResponseToJson(
      this,
    );
  }
}

abstract class _QueriesResponse implements QueriesResponse {
  factory _QueriesResponse(
      {@JsonKey(name: 'previousPage')
          final List<QueriesDataResponse>? previousPage,
      @JsonKey(name: 'request')
          final List<QueriesDataResponse>? request,
      @JsonKey(name: 'nextPage')
          final List<QueriesDataResponse>? nextPage}) = _$_QueriesResponse;

  factory _QueriesResponse.fromJson(Map<String, dynamic> json) =
      _$_QueriesResponse.fromJson;

  @override
  @JsonKey(name: 'previousPage')
  List<QueriesDataResponse>? get previousPage;
  @override
  @JsonKey(name: 'request')
  List<QueriesDataResponse>? get request;
  @override
  @JsonKey(name: 'nextPage')
  List<QueriesDataResponse>? get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$_QueriesResponseCopyWith<_$_QueriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

QueriesDataResponse _$QueriesDataResponseFromJson(Map<String, dynamic> json) {
  return _QueriesDataResponse.fromJson(json);
}

/// @nodoc
mixin _$QueriesDataResponse {
  @JsonKey(name: 'title')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalResults')
  String? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'searchTerms')
  String? get searchTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'startIndex')
  int? get startIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'inputEncoding')
  String? get inputEncoding => throw _privateConstructorUsedError;
  @JsonKey(name: 'outputEncoding')
  String? get outputEncoding => throw _privateConstructorUsedError;
  @JsonKey(name: 'safe')
  String? get safe => throw _privateConstructorUsedError;
  @JsonKey(name: 'cx')
  String? get cx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueriesDataResponseCopyWith<QueriesDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueriesDataResponseCopyWith<$Res> {
  factory $QueriesDataResponseCopyWith(
          QueriesDataResponse value, $Res Function(QueriesDataResponse) then) =
      _$QueriesDataResponseCopyWithImpl<$Res, QueriesDataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? type,
      @JsonKey(name: 'totalResults') String? totalResults,
      @JsonKey(name: 'searchTerms') String? searchTerms,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'startIndex') int? startIndex,
      @JsonKey(name: 'inputEncoding') String? inputEncoding,
      @JsonKey(name: 'outputEncoding') String? outputEncoding,
      @JsonKey(name: 'safe') String? safe,
      @JsonKey(name: 'cx') String? cx});
}

/// @nodoc
class _$QueriesDataResponseCopyWithImpl<$Res, $Val extends QueriesDataResponse>
    implements $QueriesDataResponseCopyWith<$Res> {
  _$QueriesDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? totalResults = freezed,
    Object? searchTerms = freezed,
    Object? count = freezed,
    Object? startIndex = freezed,
    Object? inputEncoding = freezed,
    Object? outputEncoding = freezed,
    Object? safe = freezed,
    Object? cx = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      searchTerms: freezed == searchTerms
          ? _value.searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      startIndex: freezed == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      inputEncoding: freezed == inputEncoding
          ? _value.inputEncoding
          : inputEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
      outputEncoding: freezed == outputEncoding
          ? _value.outputEncoding
          : outputEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
      safe: freezed == safe
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as String?,
      cx: freezed == cx
          ? _value.cx
          : cx // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueriesDataResponseCopyWith<$Res>
    implements $QueriesDataResponseCopyWith<$Res> {
  factory _$$_QueriesDataResponseCopyWith(_$_QueriesDataResponse value,
          $Res Function(_$_QueriesDataResponse) then) =
      __$$_QueriesDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? type,
      @JsonKey(name: 'totalResults') String? totalResults,
      @JsonKey(name: 'searchTerms') String? searchTerms,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'startIndex') int? startIndex,
      @JsonKey(name: 'inputEncoding') String? inputEncoding,
      @JsonKey(name: 'outputEncoding') String? outputEncoding,
      @JsonKey(name: 'safe') String? safe,
      @JsonKey(name: 'cx') String? cx});
}

/// @nodoc
class __$$_QueriesDataResponseCopyWithImpl<$Res>
    extends _$QueriesDataResponseCopyWithImpl<$Res, _$_QueriesDataResponse>
    implements _$$_QueriesDataResponseCopyWith<$Res> {
  __$$_QueriesDataResponseCopyWithImpl(_$_QueriesDataResponse _value,
      $Res Function(_$_QueriesDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? totalResults = freezed,
    Object? searchTerms = freezed,
    Object? count = freezed,
    Object? startIndex = freezed,
    Object? inputEncoding = freezed,
    Object? outputEncoding = freezed,
    Object? safe = freezed,
    Object? cx = freezed,
  }) {
    return _then(_$_QueriesDataResponse(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      searchTerms: freezed == searchTerms
          ? _value.searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      startIndex: freezed == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      inputEncoding: freezed == inputEncoding
          ? _value.inputEncoding
          : inputEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
      outputEncoding: freezed == outputEncoding
          ? _value.outputEncoding
          : outputEncoding // ignore: cast_nullable_to_non_nullable
              as String?,
      safe: freezed == safe
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as String?,
      cx: freezed == cx
          ? _value.cx
          : cx // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueriesDataResponse implements _QueriesDataResponse {
  _$_QueriesDataResponse(
      {@JsonKey(name: 'title') this.type,
      @JsonKey(name: 'totalResults') this.totalResults,
      @JsonKey(name: 'searchTerms') this.searchTerms,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'startIndex') this.startIndex,
      @JsonKey(name: 'inputEncoding') this.inputEncoding,
      @JsonKey(name: 'outputEncoding') this.outputEncoding,
      @JsonKey(name: 'safe') this.safe,
      @JsonKey(name: 'cx') this.cx});

  factory _$_QueriesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QueriesDataResponseFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? type;
  @override
  @JsonKey(name: 'totalResults')
  final String? totalResults;
  @override
  @JsonKey(name: 'searchTerms')
  final String? searchTerms;
  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'startIndex')
  final int? startIndex;
  @override
  @JsonKey(name: 'inputEncoding')
  final String? inputEncoding;
  @override
  @JsonKey(name: 'outputEncoding')
  final String? outputEncoding;
  @override
  @JsonKey(name: 'safe')
  final String? safe;
  @override
  @JsonKey(name: 'cx')
  final String? cx;

  @override
  String toString() {
    return 'QueriesDataResponse(type: $type, totalResults: $totalResults, searchTerms: $searchTerms, count: $count, startIndex: $startIndex, inputEncoding: $inputEncoding, outputEncoding: $outputEncoding, safe: $safe, cx: $cx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueriesDataResponse &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.searchTerms, searchTerms) ||
                other.searchTerms == searchTerms) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.inputEncoding, inputEncoding) ||
                other.inputEncoding == inputEncoding) &&
            (identical(other.outputEncoding, outputEncoding) ||
                other.outputEncoding == outputEncoding) &&
            (identical(other.safe, safe) || other.safe == safe) &&
            (identical(other.cx, cx) || other.cx == cx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, totalResults, searchTerms,
      count, startIndex, inputEncoding, outputEncoding, safe, cx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueriesDataResponseCopyWith<_$_QueriesDataResponse> get copyWith =>
      __$$_QueriesDataResponseCopyWithImpl<_$_QueriesDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueriesDataResponseToJson(
      this,
    );
  }
}

abstract class _QueriesDataResponse implements QueriesDataResponse {
  factory _QueriesDataResponse(
      {@JsonKey(name: 'title') final String? type,
      @JsonKey(name: 'totalResults') final String? totalResults,
      @JsonKey(name: 'searchTerms') final String? searchTerms,
      @JsonKey(name: 'count') final int? count,
      @JsonKey(name: 'startIndex') final int? startIndex,
      @JsonKey(name: 'inputEncoding') final String? inputEncoding,
      @JsonKey(name: 'outputEncoding') final String? outputEncoding,
      @JsonKey(name: 'safe') final String? safe,
      @JsonKey(name: 'cx') final String? cx}) = _$_QueriesDataResponse;

  factory _QueriesDataResponse.fromJson(Map<String, dynamic> json) =
      _$_QueriesDataResponse.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get type;
  @override
  @JsonKey(name: 'totalResults')
  String? get totalResults;
  @override
  @JsonKey(name: 'searchTerms')
  String? get searchTerms;
  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(name: 'startIndex')
  int? get startIndex;
  @override
  @JsonKey(name: 'inputEncoding')
  String? get inputEncoding;
  @override
  @JsonKey(name: 'outputEncoding')
  String? get outputEncoding;
  @override
  @JsonKey(name: 'safe')
  String? get safe;
  @override
  @JsonKey(name: 'cx')
  String? get cx;
  @override
  @JsonKey(ignore: true)
  _$$_QueriesDataResponseCopyWith<_$_QueriesDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
