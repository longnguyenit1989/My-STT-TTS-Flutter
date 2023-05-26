import 'dart:async';

import 'package:intl/intl.dart';
import 'package:prototype_flutter/local/prototype_local_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../model/item_search_response.dart';
import '../model/local/item_link.dart';
import '../model/local/item_speak.dart';
import '../model/local/item_text_recognize.dart';

class MainBloc {
  static MainBloc? _mainBloc;

  static MainBloc getInstanceMainBloc() {
    _mainBloc ??= MainBloc();
    return _mainBloc!;
  }

  final searchKeyWords = BehaviorSubject<String>();

  final speakController = StreamController<List<SpeakItem>>();
  final linkController = StreamController<List<LinkItem>>();
  final textRecognizeController = StreamController<List<TextRecognizeItem>>();

  final dateFormat = DateFormat("yyyy-MM-dd hh:mm:ss");

  List<SpeakItem> listSpeak = [];
  List<LinkItem> listLink = [];
  List<TextRecognizeItem> listTextRecognize = [];


  final PrototypeLocalRepository _prototypeRepository =
      PrototypeLocalRepositoryImp();

  addSpeakItem(String content, String language) async {
    var time = dateFormat.format(DateTime.now());
    var item = SpeakItem(content: content, speakTime: time, language: language);
    await _prototypeRepository.insertSpeakItem(item);
  }

  addLinkItem(ItemSearchResponse itemResponse) async {
    var time = dateFormat.format(DateTime.now());
    var link = itemResponse.link ?? "";
    var title = itemResponse.title ?? "";
    var item = LinkItem(title: title, link: link, openTime: time);
    await _prototypeRepository.insertLinkItem(item);
  }

  addTextRecognizeItem(String content, String language) async {
    var time = dateFormat.format(DateTime.now());
    var item = TextRecognizeItem(content: content, recognizeTime: time, language: language);
    await _prototypeRepository.insertTextRecognizeItem(item);
  }
}
