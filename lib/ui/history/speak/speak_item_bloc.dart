import 'dart:async';

import 'package:intl/intl.dart';

import '../../../local/prototype_local_repository.dart';
import '../../../model/local/item_speak.dart';

class SpeakItemBloc {
  final PrototypeLocalRepository _prototypeRepository =
      PrototypeLocalRepositoryImp();

  List<SpeakItem> listSpeak = [];

  final speakController = StreamController<List<SpeakItem>>.broadcast();

  final dateFormat = DateFormat("yyyy-MM-dd hh:mm:ss");

  fetchAllHistory() async {
    var speaks = await _prototypeRepository.getAllSpeakItem();

    listSpeak.clear();

    listSpeak.addAll(speaks);

    speakController.sink.add(listSpeak);
  }

  clearAllHistorySpeak() async {
    await _prototypeRepository.clearListSpeak();
    speakController.sink.add([]);
  }
}
