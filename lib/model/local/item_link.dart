import '../../local/database_helper.dart';

class LinkItem {
  String title;
  String link;
  String openTime;

  LinkItem({required this.title, required this.link, required this.openTime});

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapLink = {
      DataBaseHelper.clLinkTitle: title,
      DataBaseHelper.clLink: link,
      DataBaseHelper.clOpenTime: openTime
    };
    return mapLink;
  }

  static LinkItem fromMap(Map<String, dynamic> mapData) {
    String title = mapData[DataBaseHelper.clLinkTitle];
    String link = mapData[DataBaseHelper.clLink];
    String openTime = mapData[DataBaseHelper.clOpenTime];
    return LinkItem(title: title, link: link, openTime: openTime);
  }
}
