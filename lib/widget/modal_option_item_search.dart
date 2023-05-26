import 'package:flutter/material.dart';

import '../model/item_search_response.dart';

class ModalOptionItemSearch extends StatelessWidget {

  const ModalOptionItemSearch({super.key, required this.item, required this.onSpeak, required this.onOpenLink});

  final ItemSearchResponse item;

  final Function onSpeak;
  final Function onOpenLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        height: 200,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () => {onSpeak(item)},
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.redAccent)),
                  child: const Text('Speak')),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () => {onOpenLink(item)},
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.blueAccent)),
                  child: const Text('Open link')),
            )
          ],
        ),
      ),
    );
  }
}
