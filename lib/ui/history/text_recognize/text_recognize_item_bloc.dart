import 'dart:async';

import 'package:intl/intl.dart';

import '../../../local/prototype_local_repository.dart';
import '../../../model/local/item_link.dart';
import '../../../model/local/item_text_recognize.dart';

class TextRecognizeItemBloc {
  final PrototypeLocalRepository _prototypeRepository =
  PrototypeLocalRepositoryImp();

  List<TextRecognizeItem> listTextRecognize = [];

  final textRecognizeController = StreamController<List<TextRecognizeItem>>.broadcast();

  final dateFormat = DateFormat("yyyy-MM-dd hh:mm:ss");

  fetchAllHistory() async {
    var textRecognize = await _prototypeRepository.getAllTextRecognizedItem();

    listTextRecognize.clear();

    listTextRecognize.addAll(textRecognize);

    textRecognizeController.sink.add(listTextRecognize);
  }

  clearAllHistoryTextRecognize() async {
    await _prototypeRepository.clearListTextRecognize();
    textRecognizeController.sink.add([]);
  }
}