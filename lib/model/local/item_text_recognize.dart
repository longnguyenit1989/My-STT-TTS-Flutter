import '../../local/database_helper.dart';

class TextRecognizeItem {
  String content;
  String recognizeTime;
  String language;

  TextRecognizeItem(
      {required this.content, required this.recognizeTime, required this.language});

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapLink = {
      DataBaseHelper.clText: content,
      DataBaseHelper.clRecognizeTime: recognizeTime,
      DataBaseHelper.clLanguageRecognize: language
    };
    return mapLink;
  }

  static TextRecognizeItem fromMap(Map<String, dynamic> mapData) {
    String text = mapData[DataBaseHelper.clText];
    String recognizeTime = mapData[DataBaseHelper.clRecognizeTime];
    String language = mapData[DataBaseHelper.clLanguageRecognize];
    return TextRecognizeItem(content: text, recognizeTime: recognizeTime, language: language);
  }
}
