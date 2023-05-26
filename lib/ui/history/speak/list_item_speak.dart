import 'package:flutter/material.dart';
import 'package:prototype_flutter/ui/history/speak/speak_item_bloc.dart';

import '../../../model/local/item_speak.dart';

class ItemSpeakHistory extends StatefulWidget {
  ItemSpeakHistory({super.key, required this.itemSpeakClick});

  final SpeakItemBloc speakBloc = SpeakItemBloc();

  Function itemSpeakClick;

  @override
  State<StatefulWidget> createState() {
    return _ItemSpeakState();
  }
}

class _ItemSpeakState extends State<ItemSpeakHistory>{

  @override
  void initState() {
    super.initState();
    widget.speakBloc.fetchAllHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.redAccent.withOpacity(0.2),
          child: TextButton.icon(
              onPressed: () => {widget.speakBloc.clearAllHistorySpeak()},
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
              List<SpeakItem> listItems = snapshot.data ?? [];
              return ListView.separated(
                  itemBuilder: (context, index) {
                    var item = listItems[index];
                    return ListTile(
                      title: Text(item.content),
                      trailing: Text(item.speakTime, style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                      subtitle: Text("Language: ${item.language}"),
                      onTap: () => {_onTapItem(item)},
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
              stream: widget.speakBloc.speakController.stream,
            ))
      ],
    );
  }

  void _onTapItem(SpeakItem item) {
    widget.itemSpeakClick(item);
    Navigator.pop(context);
  }
}
