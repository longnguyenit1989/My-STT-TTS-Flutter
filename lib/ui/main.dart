import 'package:flutter/material.dart';
import 'package:prototype_flutter/ui/main_bloc.dart';
import 'package:prototype_flutter/widget/list_search_widget.dart';
import 'package:prototype_flutter/widget/modal_option_item_search.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:text_to_speech/text_to_speech.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/item_search_response.dart';
import '../model/local/item_speak.dart';
import '../model/local/item_text_recognize.dart';
import 'history/page_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prototype',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter prototype'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final SpeechToText speech = SpeechToText();
  final TextToSpeech textToSpeech = TextToSpeech();
  final _resultTextRecognizeController = TextEditingController();
  LocaleName? _currentLocale;
  List<LocaleName> localeNameSp = [];

  final MainBloc mainViewModel = MainBloc.getInstanceMainBloc();

  @override
  void initState() {
    super.initState();
    _initSpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageHistory(
                                    itemSpeakClick: _onHistorySpeak,
                                    itemTextRecognizeClick: _onHistoryTextRecognize,
                                  )))
                    },
                icon: const Icon(Icons.history_outlined))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DropdownButton<LocaleName>(
                    items: localeNameSp
                        .map((item) => DropdownMenuItem<LocaleName>(
                              value: item,
                              child: Text(item.name,
                                  style: const TextStyle(fontSize: 12)),
                            ))
                        .toList(),
                    onChanged: _onSelectLocale,
                    value: _currentLocale),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      TextField(
                          controller: _resultTextRecognizeController,
                          maxLines: 5, //or null
                          decoration: const InputDecoration(
                              border: OutlineInputBorder())),
                      InkWell(
                        onTap: _onSpeakValueInput,
                        child: const Icon(
                          Icons.volume_up_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: _toggleListening,
                child: Text(
                  _getTextStatus(),
                )),
            TextButton(
                onPressed: _searchKeyWordSpeech, child: const Text("Search")),
            Expanded(child: ListSearchWidget(onTapItem: _onTapItemSearch))
          ],
        ));
  }

  Future<void> _initSpeechToText() async {
    try {
      var hasSpeech = await speech.initialize(
          onError: _onErrorListener, onStatus: _onStatusListener);
      if (hasSpeech) {
        var systemLocale = await speech.systemLocale();
        localeNameSp = await speech.locales();
        print("localeSp: ${localeNameSp.map((item) => item.localeId)}");
        setState(() {
          _currentLocale = localeNameSp
              .firstWhere((item) => item.localeId == systemLocale?.localeId);
        });
      }
    } catch (e) {
      print('Speech recognition failed: ${e.toString()}');
    }
  }

  void _toggleListening() async {
    if (speech.isListening) {
      await speech.stop();
    } else {
      await speech.listen(
          onResult: _onResultListener,
          cancelOnError: true,
          localeId: _currentLocale?.localeId ?? "");
    }
    setState(() {});
  }

  void _onErrorListener(SpeechRecognitionError error) {
    setState(() {});
  }

  bool _checkStartListening() {
    return speech.isListening;
  }

  String _getTextStatus() {
    return _checkStartListening() ? "Stop" : "Start listen";
  }

  void _onStatusListener(String status) {
    print("Listener status: $status");
  }

  void _onResultListener(SpeechRecognitionResult result) {
    if (result.finalResult) {
      var languageRecognize = _currentLocale?.localeId ?? "en_US";
      mainViewModel.addTextRecognizeItem(
          result.recognizedWords, languageRecognize);
    }
    setState(() {
      _resultTextRecognizeController.text = result.recognizedWords;
    });
  }

  void _onSelectLocale(LocaleName? locale) {
    setState(() {
      _currentLocale = locale;
    });
  }

  Future<void> _onSpeakValueInput() async {
    var languageSpeak =
        _currentLocale?.localeId.replaceAll("_", "-") ?? "en-US";
    var textInput = _resultTextRecognizeController.text;
    if (textInput.isNotEmpty) {
      await _speak(textInput, languageSpeak);
    }
  }

  void _searchKeyWordSpeech() {
    final keyWords = _resultTextRecognizeController.text;
    if (keyWords.isNotEmpty) {
      mainViewModel.searchKeyWords.add(keyWords);
    }
  }

  void _onTapItemSearch(ItemSearchResponse item) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext content) {
          return ModalOptionItemSearch(
              item: item,
              onSpeak: _onSpeakSnippetItemSearch,
              onOpenLink: _onOpenLinkSearch);
        });
  }

  Future<void> _onSpeakSnippetItemSearch(ItemSearchResponse item) async {
    var snippet = item.snippet;
    _resultTextRecognizeController.text = snippet.toString();
    await _onSpeakValueInput();
    setState(() {
      Navigator.pop(context);
    });
  }

  Future<void> _onOpenLinkSearch(ItemSearchResponse item) async {
    var url = Uri.parse(item.link.toString());
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
      await mainViewModel.addLinkItem(item);
    } else {
      print("Could not launch $url}");
    }
    setState(() {
      Navigator.pop(context);
    });
  }

  Future<void> _onHistorySpeak(SpeakItem speakItem) async {
    _resultTextRecognizeController.text = speakItem.content;
    var textInput = speakItem.content;
    var language = speakItem.language;
    await _speak(textInput, language);
  }

  Future<void> _onHistoryTextRecognize(
      TextRecognizeItem textRecognizeItem) async {
    _resultTextRecognizeController.text = textRecognizeItem.content;
    var textInput = textRecognizeItem.content;
    var language = textRecognizeItem.language;
    await _speak(textInput, language);
  }

  Future<void> _speak(String value, String language) async {
    await textToSpeech.setLanguage(language);
    await textToSpeech.speak(value);
    await mainViewModel.addSpeakItem(value, language);
  }
}
