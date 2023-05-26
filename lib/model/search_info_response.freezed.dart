// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchInfoResponse _$SearchInfoResponseFromJson(Map<String, dynamic> json) {
  return _SearchInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchInfoResponse {
  @JsonKey(name: 'searchTime')
  double? get searchTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'formattedSearchTime')
  String? get formattedSearchTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalResults')
  String? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'formattedTotalResults')
  String? get formattedTotalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchInfoResponseCopyWith<SearchInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchInfoResponseCopyWith<$Res> {
  factory $SearchInfoResponseCopyWith(
          SearchInfoResponse value, $Res Function(SearchInfoResponse) then) =
      _$SearchInfoResponseCopyWithImpl<$Res, SearchInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'searchTime') double? searchTime,
      @JsonKey(name: 'formattedSearchTime') String? formattedSearchTime,
      @JsonKey(name: 'totalResults') String? totalResults,
      @JsonKey(name: 'formattedTotalResults') String? formattedTotalResults});
}

/// @nodoc
class _$SearchInfoResponseCopyWithImpl<$Res, $Val extends SearchInfoResponse>
    implements $SearchInfoResponseCopyWith<$Res> {
  _$SearchInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTime = freezed,
    Object? formattedSearchTime = freezed,
    Object? totalResults = freezed,
    Object? formattedTotalResults = freezed,
  }) {
    return _then(_value.copyWith(
      searchTime: freezed == searchTime
          ? _value.searchTime
          : searchTime // ignore: cast_nullable_to_non_nullable
              as double?,
      formattedSearchTime: freezed == formattedSearchTime
          ? _value.formattedSearchTime
          : formattedSearchTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedTotalResults: freezed == formattedTotalResults
          ? _value.formattedTotalResults
          : formattedTotalResults // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchInfoResponseCopyWith<$Res>
    implements $SearchInfoResponseCopyWith<$Res> {
  factory _$$_SearchInfoResponseCopyWith(_$_SearchInfoResponse value,
          $Res Function(_$_SearchInfoResponse) then) =
      __$$_SearchInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'searchTime') double? searchTime,
      @JsonKey(name: 'formattedSearchTime') String? formattedSearchTime,
      @JsonKey(name: 'totalResults') String? totalResults,
      @JsonKey(name: 'formattedTotalResults') String? formattedTotalResults});
}

/// @nodoc
class __$$_SearchInfoResponseCopyWithImpl<$Res>
    extends _$SearchInfoResponseCopyWithImpl<$Res, _$_SearchInfoResponse>
    implements _$$_SearchInfoResponseCopyWith<$Res> {
  __$$_SearchInfoResponseCopyWithImpl(
      _$_SearchInfoResponse _value, $Res Function(_$_SearchInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTime = freezed,
    Object? formattedSearchTime = freezed,
    Object? totalResults = freezed,
    Object? formattedTotalResults = freezed,
  }) {
    return _then(_$_SearchInfoResponse(
      searchTime: freezed == searchTime
          ? _value.searchTime
          : searchTime // ignore: cast_nullable_to_non_nullable
              as double?,
      formattedSearchTime: freezed == formattedSearchTime
          ? _value.formattedSearchTime
          : formattedSearchTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedTotalResults: freezed == formattedTotalResults
          ? _value.formattedTotalResults
          : formattedTotalResults // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchInfoResponse implements _SearchInfoResponse {
  _$_SearchInfoResponse(
      {@JsonKey(name: 'searchTime') this.searchTime,
      @JsonKey(name: 'formattedSearchTime') this.formattedSearchTime,
      @JsonKey(name: 'totalResults') this.totalResults,
      @JsonKey(name: 'formattedTotalResults') this.formattedTotalResults});

  factory _$_SearchInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchInfoResponseFromJson(json);

  @override
  @JsonKey(name: 'searchTime')
  final double? searchTime;
  @override
  @JsonKey(name: 'formattedSearchTime')
  final String? formattedSearchTime;
  @override
  @JsonKey(name: 'totalResults')
  final String? totalResults;
  @override
  @JsonKey(name: 'formattedTotalResults')
  final String? formattedTotalResults;

  @override
  String toString() {
    return 'SearchInfoResponse(searchTime: $searchTime, formattedSearchTime: $formattedSearchTime, totalResults: $totalResults, formattedTotalResults: $formattedTotalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchInfoResponse &&
            (identical(other.searchTime, searchTime) ||
                other.searchTime == searchTime) &&
            (identical(other.formattedSearchTime, formattedSearchTime) ||
                other.formattedSearchTime == formattedSearchTime) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.formattedTotalResults, formattedTotalResults) ||
                other.formattedTotalResults == formattedTotalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, searchTime, formattedSearchTime,
      totalResults, formattedTotalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchInfoResponseCopyWith<_$_SearchInfoResponse> get copyWith =>
      __$$_SearchInfoResponseCopyWithImpl<_$_SearchInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchInfoResponseToJson(
      this,
    );
  }
}

abstract class _SearchInfoResponse implements SearchInfoResponse {
  factory _SearchInfoResponse(
      {@JsonKey(name: 'searchTime')
          final double? searchTime,
      @JsonKey(name: 'formattedSearchTime')
          final String? formattedSearchTime,
      @JsonKey(name: 'totalResults')
          final String? totalResults,
      @JsonKey(name: 'formattedTotalResults')
          final String? formattedTotalResults}) = _$_SearchInfoResponse;

  factory _SearchInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchInfoResponse.fromJson;

  @override
  @JsonKey(name: 'searchTime')
  double? get searchTime;
  @override
  @JsonKey(name: 'formattedSearchTime')
  String? get formattedSearchTime;
  @override
  @JsonKey(name: 'totalResults')
  String? get totalResults;
  @override
  @JsonKey(name: 'formattedTotalResults')
  String? get formattedTotalResults;
  @override
  @JsonKey(ignore: true)
  _$$_SearchInfoResponseCopyWith<_$_SearchInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
