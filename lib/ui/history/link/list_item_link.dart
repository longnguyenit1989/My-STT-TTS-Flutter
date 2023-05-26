import 'package:flutter/material.dart';
import 'package:prototype_flutter/ui/history/link/link_item_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/local/item_link.dart';

class ItemLinkHistory extends StatefulWidget {

  ItemLinkHistory({super.key});

  LinkItemBloc linkBloc = LinkItemBloc();

  @override
  State<StatefulWidget> createState() {
    return _ItemLink();
  }
}

class _ItemLink extends State<ItemLinkHistory>{

  @override
  void initState() {
    super.initState();
    widget.linkBloc.fetchAllHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.redAccent.withOpacity(0.2),
          child: TextButton.icon(
              onPressed: () => {widget.linkBloc.clearAllHistoryLink()},
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
                  List<LinkItem> listItems = snapshot.data ?? [];
                  return ListView.separated(
                      itemBuilder: (context, index) {
                        var item = listItems[index];
                        return ListTile(
                          title: Text(item.title),
                          subtitle: Text(item.link, style: const TextStyle(color: Colors.blueAccent),),
                          trailing: Text(item.openTime, style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                          onTap: () => {
                            _openLinkHistory(item)
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
              stream: widget.linkBloc.linkController.stream,
            ))
      ],
    );
  }

  Future<void> _openLinkHistory(LinkItem item) async {
    var url = Uri.parse(item.link.toString());
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print("Could not launch $url}");
    }
  }

}
