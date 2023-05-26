import '../model/item_search_response.dart';

enum SearchStatus { initial, success, failure }

class SearchState {
  final SearchStatus status;
  final List<ItemSearchResponse> items;
  final String? messageError;

  SearchState(
      {this.status = SearchStatus.initial,
      this.items = const [],
      this.messageError});

  SearchState copyWith(
      {SearchStatus? status,
      List<ItemSearchResponse>? items,
      String? messageError}) {
    return SearchState(
        status: status ?? this.status,
        items: items ?? this.items,
        messageError: messageError ?? this.messageError);
  }

  @override
  String toString() {
    return '''SearchState { status: $status, items: ${items.length}, messageError: $messageError }''';
  }
}
