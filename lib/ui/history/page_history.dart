import 'package:flutter/material.dart';

import 'link/list_item_link.dart';
import 'speak/list_item_speak.dart';
import 'text_recognize/list_item_text_recognize.dart';

class PageHistory extends StatefulWidget {
  PageHistory({super.key, required this.itemSpeakClick, required this.itemTextRecognizeClick});

  Function itemSpeakClick;
  Function itemTextRecognizeClick;

  @override
  State<StatefulWidget> createState() {
    return _PageHistoryState();
  }
}

class _PageHistoryState extends State<PageHistory> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(Icons.arrow_back_rounded)),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Text("Speak")),
              Tab(icon: Text("Link")),
              Tab(icon: Text("Text Recognize")),
            ],
          ),
          title: const Text("History"),
        ),
        body: TabBarView(
          children: [
            ItemSpeakHistory(itemSpeakClick: widget.itemSpeakClick),
            ItemLinkHistory(),
            ItemTextRecognizeHistory(itemRecognizeClick: widget.itemTextRecognizeClick),
          ],
        ),
      ),
    );
  }
}