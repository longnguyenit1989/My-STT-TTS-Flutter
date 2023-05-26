// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  URLResponse? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'queries')
  QueriesResponse? get queries => throw _privateConstructorUsedError;
  @JsonKey(name: 'context')
  ContextResponse? get context => throw _privateConstructorUsedError;
  @JsonKey(name: 'searchInformation')
  SearchInfoResponse? get searchInformation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ItemSearchResponse>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res, SearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'url') URLResponse? url,
      @JsonKey(name: 'queries') QueriesResponse? queries,
      @JsonKey(name: 'context') ContextResponse? context,
      @JsonKey(name: 'searchInformation') SearchInfoResponse? searchInformation,
      @JsonKey(name: 'items') List<ItemSearchResponse>? items});

  $URLResponseCopyWith<$Res>? get url;
  $QueriesResponseCopyWith<$Res>? get queries;
  $ContextResponseCopyWith<$Res>? get context;
  $SearchInfoResponseCopyWith<$Res>? get searchInformation;
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res, $Val extends SearchResponse>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? url = freezed,
    Object? queries = freezed,
    Object? context = freezed,
    Object? searchInformation = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as URLResponse?,
      queries: freezed == queries
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as QueriesResponse?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as ContextResponse?,
      searchInformation: freezed == searchInformation
          ? _value.searchInformation
          : searchInformation // ignore: cast_nullable_to_non_nullable
              as SearchInfoResponse?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemSearchResponse>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $URLResponseCopyWith<$Res>? get url {
    if (_value.url == null) {
      return null;
    }

    return $URLResponseCopyWith<$Res>(_value.url!, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QueriesResponseCopyWith<$Res>? get queries {
    if (_value.queries == null) {
      return null;
    }

    return $QueriesResponseCopyWith<$Res>(_value.queries!, (value) {
      return _then(_value.copyWith(queries: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContextResponseCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ContextResponseCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchInfoResponseCopyWith<$Res>? get searchInformation {
    if (_value.searchInformation == null) {
      return null;
    }

    return $SearchInfoResponseCopyWith<$Res>(_value.searchInformation!,
        (value) {
      return _then(_value.copyWith(searchInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$_SearchResponseCopyWith(
          _$_SearchResponse value, $Res Function(_$_SearchResponse) then) =
      __$$_SearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'url') URLResponse? url,
      @JsonKey(name: 'queries') QueriesResponse? queries,
      @JsonKey(name: 'context') ContextResponse? context,
      @JsonKey(name: 'searchInformation') SearchInfoResponse? searchInformation,
      @JsonKey(name: 'items') List<ItemSearchResponse>? items});

  @override
  $URLResponseCopyWith<$Res>? get url;
  @override
  $QueriesResponseCopyWith<$Res>? get queries;
  @override
  $ContextResponseCopyWith<$Res>? get context;
  @override
  $SearchInfoResponseCopyWith<$Res>? get searchInformation;
}

/// @nodoc
class __$$_SearchResponseCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res, _$_SearchResponse>
    implements _$$_SearchResponseCopyWith<$Res> {
  __$$_SearchResponseCopyWithImpl(
      _$_SearchResponse _value, $Res Function(_$_SearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? url = freezed,
    Object? queries = freezed,
    Object? context = freezed,
    Object? searchInformation = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_SearchResponse(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as URLResponse?,
      queries: freezed == queries
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as QueriesResponse?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as ContextResponse?,
      searchInformation: freezed == searchInformation
          ? _value.searchInformation
          : searchInformation // ignore: cast_nullable_to_non_nullable
              as SearchInfoResponse?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemSearchResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponse implements _SearchResponse {
  _$_SearchResponse(
      {@JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'queries') this.queries,
      @JsonKey(name: 'context') this.context,
      @JsonKey(name: 'searchInformation') this.searchInformation,
      @JsonKey(name: 'items') final List<ItemSearchResponse>? items})
      : _items = items;

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);

  @override
  @JsonKey(name: 'kind')
  final String? kind;
  @override
  @JsonKey(name: 'url')
  final URLResponse? url;
  @override
  @JsonKey(name: 'queries')
  final QueriesResponse? queries;
  @override
  @JsonKey(name: 'context')
  final ContextResponse? context;
  @override
  @JsonKey(name: 'searchInformation')
  final SearchInfoResponse? searchInformation;
  final List<ItemSearchResponse>? _items;
  @override
  @JsonKey(name: 'items')
  List<ItemSearchResponse>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResponse(kind: $kind, url: $url, queries: $queries, context: $context, searchInformation: $searchInformation, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponse &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.queries, queries) || other.queries == queries) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.searchInformation, searchInformation) ||
                other.searchInformation == searchInformation) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, url, queries, context,
      searchInformation, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      __$$_SearchResponseCopyWithImpl<_$_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseToJson(
      this,
    );
  }
}

abstract class _SearchResponse implements SearchResponse {
  factory _SearchResponse(
      {@JsonKey(name: 'kind')
          final String? kind,
      @JsonKey(name: 'url')
          final URLResponse? url,
      @JsonKey(name: 'queries')
          final QueriesResponse? queries,
      @JsonKey(name: 'context')
          final ContextResponse? context,
      @JsonKey(name: 'searchInformation')
          final SearchInfoResponse? searchInformation,
      @JsonKey(name: 'items')
          final List<ItemSearchResponse>? items}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  @JsonKey(name: 'kind')
  String? get kind;
  @override
  @JsonKey(name: 'url')
  URLResponse? get url;
  @override
  @JsonKey(name: 'queries')
  QueriesResponse? get queries;
  @override
  @JsonKey(name: 'context')
  ContextResponse? get context;
  @override
  @JsonKey(name: 'searchInformation')
  SearchInfoResponse? get searchInformation;
  @override
  @JsonKey(name: 'items')
  List<ItemSearchResponse>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
