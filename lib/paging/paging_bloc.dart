import 'package:bloc/bloc.dart';
import 'package:prototype_flutter/paging/state_search.dart';

import '../model/search_response.dart';
import '../search_repository.dart';
import 'event_search.dart';

class SearchItemsBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository _searchRepository = SearchRepositoryImp();

  SearchItemsBloc() : super(SearchState()) {
    on<StartFetch>(_onItemsFetched);
  }

  Future<void> _onItemsFetched(
      StartFetch event, Emitter<SearchState> emit) async {
    try {
      if (state.status == SearchStatus.initial || event.firstLoad) {
        final items = await _searchRepository.search(event.keyWord, null);
        return items.when(
            (success) => {
                  emit(state.copyWith(
                      status: SearchStatus.success,
                      items: items.tryGetSuccess()?.items))
                },
            (error) => {emit(state.copyWith(status: SearchStatus.failure, messageError: error))});
      }
      final responseSearch = (await _searchRepository.search(event.keyWord, state.items.length));
      responseSearch.when((response) => {
        _handleSuccessSearch(response, emit)
      }, (error) => {
        emit(state.copyWith(status: SearchStatus.failure, messageError: error))
      });

    } catch (e) {
      emit(state.copyWith(status: SearchStatus.failure, messageError: e.toString()));
    }
  }

  void _handleSuccessSearch(SearchResponse response, Emitter<SearchState> emit){
    final items = response.items;
    (items == null || items.isEmpty)
        ? emit(state.copyWith())
        : emit(state.copyWith(
        status: SearchStatus.success,
        items: List.of(state.items)..addAll(items)));
  }
}
