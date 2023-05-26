import '../../local/database_helper.dart';

class SpeakItem {
  String content;
  String speakTime;
  String language;

  SpeakItem({required this.content, required this.speakTime, required this.language});

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapSpeak = {
      DataBaseHelper.clSpeakContent: content,
      DataBaseHelper.clSpeakTime: speakTime,
      DataBaseHelper.clLanguageSpeak: language
    };
    return mapSpeak;
  }

  static SpeakItem fromMap(Map<String, dynamic> mapData) {
    String content = mapData[DataBaseHelper.clSpeakContent];
    String speakTime = mapData[DataBaseHelper.clSpeakTime];
    String language = mapData[DataBaseHelper.clLanguageSpeak];
    return SpeakItem(content: content, speakTime: speakTime, language: language);
  }
}