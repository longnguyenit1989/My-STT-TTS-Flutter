class SearchEvent{}
class StartFetch extends SearchEvent{
  final String keyWord;
  final bool firstLoad;

  StartFetch({required this.keyWord, required this.firstLoad});
}