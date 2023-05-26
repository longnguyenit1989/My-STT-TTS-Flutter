import 'package:flutter/material.dart';
import 'package:prototype_flutter/ui/history/text_recognize/text_recognize_item_bloc.dart';

import '../../../model/local/item_text_recognize.dart';

class ItemTextRecognizeHistory extends StatefulWidget {
  ItemTextRecognizeHistory({super.key, required this.itemRecognizeClick});

  TextRecognizeItemBloc textRecognizeBloc = TextRecognizeItemBloc();

  Function itemRecognizeClick;

  @override
  State<StatefulWidget> createState() {
    return _ItemTextRecognize();
  }
}

class _ItemTextRecognize extends State<ItemTextRecognizeHistory> {
  @override
  void initState() {
    super.initState();
    widget.textRecognizeBloc.fetchAllHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.redAccent.withOpacity(0.2),
          child: TextButton.icon(
              onPressed: () =>
                  {widget.textRecognizeBloc.clearAllHistoryTextRecognize()},
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.redAccent,
              ),
              label: const Text(
                "Clear",
                style: TextStyle(color: Colors.redAccent),
              )),
        ),
        Expanded(
            child: StreamBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.data != null &&
                snapshot.data!.isNotEmpty) {
              List<TextRecognizeItem> listItems = snapshot.data ?? [];
              return ListView.separated(
                  itemBuilder: (context, index) {
                    var item = listItems[index];
                    return ListTile(
                      title: Text(item.content),
                      trailing: Text(item.recognizeTime, style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                      subtitle: Text("Language: ${item.language}"),
                      onTap: () => {
                        _onTapItem(item)
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: listItems.length);
            } else {
              return const Center(child: Text("No data!"));
            }
          },
          stream: widget.textRecognizeBloc.textRecognizeController.stream,
        ))
      ],
    );
  }

  void _onTapItem(TextRecognizeItem item) {
    widget.itemRecognizeClick(item);
    Navigator.pop(context);
  }
}
