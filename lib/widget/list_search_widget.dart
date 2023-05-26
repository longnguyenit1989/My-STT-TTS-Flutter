import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prototype_flutter/ui/main_bloc.dart';

import '../model/item_search_response.dart';
import '../paging/event_search.dart';
import '../paging/paging_bloc.dart';
import '../paging/state_search.dart';

class ListSearchWidget extends StatefulWidget {
  const ListSearchWidget({super.key, required this.onTapItem});

  final Function onTapItem;

  @override
  State<StatefulWidget> createState() => _ListSearchState();
}

class _ListSearchState extends State<ListSearchWidget> {
  final _scrollController = ScrollController();

  final SearchItemsBloc searchItemsBloc = SearchItemsBloc();

  final _mainViewModel = MainBloc.getInstanceMainBloc();

  String _keyWords = "";

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _mainViewModel.searchKeyWords.listen((keywords) {
      _keyWords = keywords;
      _getItemSearch(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => searchItemsBloc,
      child: BlocBuilder<SearchItemsBloc, SearchState>(
        builder: (context, state) {
          switch (state.status) {
            case SearchStatus.initial:
              return const Text("");
            case SearchStatus.success:
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ItemSearchResponseWidget(
                    item: state.items[index],
                    onTapItem: widget.onTapItem,
                  );
                },
                itemCount: state.items.length,
                controller: _scrollController,
              );
            case SearchStatus.failure:
              return Text(state.messageError.toString());
          }
        },
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) _getItemSearch(false);
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  void _getItemSearch(bool firstLoad) {
    searchItemsBloc.add(StartFetch(keyWord: _keyWords, firstLoad: firstLoad));
  }
}

class ItemSearchResponseWidget extends StatelessWidget {
  const ItemSearchResponseWidget({super.key, required this.item, required this.onTapItem});

  final ItemSearchResponse item;

  final Function onTapItem;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title.toString(), style: const TextStyle(fontSize: 15)),
              Text(item.snippet.toString(),
                  style: const TextStyle(fontSize: 13)),
              Text(
                item.displayLink.toString(),
                style: const TextStyle(
                    color: Colors.lightBlue,
                    fontStyle: FontStyle.italic,
                    fontSize: 12),
              )
            ],
          )),
      onTap: () => {
        onTapItem(item)
      },
    );
  }
}
