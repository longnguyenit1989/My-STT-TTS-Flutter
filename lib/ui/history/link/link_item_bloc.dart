import 'dart:async';

import 'package:intl/intl.dart';

import '../../../local/prototype_local_repository.dart';
import '../../../model/local/item_link.dart';

class LinkItemBloc {
  final PrototypeLocalRepository _prototypeRepository =
  PrototypeLocalRepositoryImp();

  List<LinkItem> listLink = [];

  final linkController = StreamController<List<LinkItem>>.broadcast();

  final dateFormat = DateFormat("yyyy-MM-dd hh:mm:ss");

  fetchAllHistory() async {
    var links = await _prototypeRepository.getAllLinkItem();

    listLink.clear();

    listLink.addAll(links);

    linkController.sink.add(listLink);
  }

  clearAllHistoryLink() async {
    await _prototypeRepository.clearListLink();
    linkController.sink.add([]);
  }
}