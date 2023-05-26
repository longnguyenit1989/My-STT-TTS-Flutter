import 'package:prototype_flutter/local/database_helper.dart';
import 'package:prototype_flutter/model/local/item_speak.dart';
import 'package:prototype_flutter/model/local/item_text_recognize.dart';

import '../model/local/item_link.dart';

abstract class PrototypeLocalRepository {
  Future<List<SpeakItem>> getAllSpeakItem();

  Future<List<LinkItem>> getAllLinkItem();

  Future<List<TextRecognizeItem>> getAllTextRecognizedItem();

  Future<int> insertSpeakItem(SpeakItem item);

  Future<int> insertLinkItem(LinkItem item);

  Future<int> insertTextRecognizeItem(TextRecognizeItem item);

  Future<void> clearListSpeak();

  Future<void> clearListLink();

  Future<void> clearListTextRecognize();
}

class PrototypeLocalRepositoryImp extends PrototypeLocalRepository{

  final DataBaseHelper _helper = DataBaseHelper.getInstanceDataBaseHelper();
  
  PrototypeLocalRepositoryImp(){
    _helper.initDataBase();
  }

  @override
  Future<void> clearListLink() async {
      await _helper.clearTable(DataBaseHelper.tbLinkOpen);
  }

  @override
  Future<void> clearListSpeak() async {
    await _helper.clearTable(DataBaseHelper.tbSpeak);
  }

  @override
  Future<void> clearListTextRecognize() async {
    await _helper.clearTable(DataBaseHelper.tbTextRecognize);
  }

  @override
  Future<List<LinkItem>> getAllLinkItem() async {
    var listItem = await _helper.getListItem(DataBaseHelper.tbLinkOpen);
    return listItem?.map((item) => LinkItem.fromMap(item)).toList() ?? [];
  }

  @override
  Future<List<SpeakItem>> getAllSpeakItem() async {
    var listItem = await _helper.getListItem(DataBaseHelper.tbSpeak);
    return listItem?.map((item) => SpeakItem.fromMap(item)).toList() ?? [];
  }

  @override
  Future<List<TextRecognizeItem>> getAllTextRecognizedItem() async {
    var listItem = await _helper.getListItem(DataBaseHelper.tbTextRecognize);
    return listItem?.map((item) => TextRecognizeItem.fromMap(item)).toList() ?? [];
  }

  @override
  Future<int> insertLinkItem(LinkItem item) async {
    return await _helper.insertItem(DataBaseHelper.tbLinkOpen, item.toMap()) ?? 0;
  }

  @override
  Future<int> insertSpeakItem(SpeakItem item) async {
    return await _helper.insertItem(DataBaseHelper.tbSpeak, item.toMap()) ?? 0;
  }

  @override
  Future<int> insertTextRecognizeItem(TextRecognizeItem item) async {
    return await _helper.insertItem(DataBaseHelper.tbTextRecognize, item.toMap()) ?? 0;
  }

}
