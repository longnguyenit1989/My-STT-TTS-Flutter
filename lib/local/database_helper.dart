import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static const String _dbName = "prototype";
  static const int _dbVersion = 1;
  static const String tbSpeak = "speak";
  static const String clSpeakContent = "speak_content";
  static const String clSpeakTime = "speak_time";
  static const String clLanguageSpeak = "language";
  static const String tbLinkOpen = "link_open";
  static const String clLinkTitle = "title";
  static const String clLink = "link";
  static const String clOpenTime = "open_time";
  static const String tbTextRecognize = "text_recognized";
  static const String clText = "text";
  static const String clRecognizeTime = "recognize_time";
  static const String clLanguageRecognize = "language";

  static DataBaseHelper? _dbHelper;
  static DataBaseHelper getInstanceDataBaseHelper(){
    _dbHelper ??= DataBaseHelper();
    return _dbHelper!;
  }

  Database? _prototypeDataBase;

  DataBaseHelper() {
    initDataBase();
  }

  Future<void> initDataBase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _dbName);
    _prototypeDataBase =
        await openDatabase(path, version: _dbVersion, onCreate: _onCreateTable);
  }

  Future<void> _onCreateTable(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $tbSpeak (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        $clSpeakContent TEXT NOT NULL,
        $clLanguageSpeak TEXT NOT NULL,
        $clSpeakTime TEXT NOT NULL
        )
    ''');

    await db.execute('''
        CREATE TABLE $tbLinkOpen (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        $clLinkTitle TEXT NOT NULL,
        $clLink TEXT NOT NULL,
        $clOpenTime TEXT NOT NULL
        )
    ''');

    await db.execute('''
        CREATE TABLE $tbTextRecognize (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        $clText TEXT NOT NULL,
        $clLanguageRecognize TEXT NOT NULL,
        $clRecognizeTime TEXT NOT NULL
        )
    ''');
  }

  Future<List<Map<String, dynamic>>?> getListItem(String tableName) async {
    return _prototypeDataBase?.query(tableName, orderBy: "id DESC");
  }

  Future<int?> insertItem(String tableName, dynamic item) async {
    return _prototypeDataBase?.insert(tableName, item);
  }

  Future<int?> clearTable(String tableName) async {
    return _prototypeDataBase?.delete(tableName);
  }
}
