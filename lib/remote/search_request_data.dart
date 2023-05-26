import '../network/request_data.dart';

const cx = "df93080fceb189de3";
const safe = "off";
const key = "AIzaSyCoHKNzy1yGaOo1PBQK361MFU97uyFX2FY";

class SearchRequestData implements RequestData {

  SearchRequestData({required this.queries, required this.startIndex});

  final String queries;
  final int? startIndex;

  @override
  get body => null;

  @override
  Map<String, dynamic> get header => {};

  @override
  String get path => "customsearch/v1";

  @override
  Map<String, dynamic>? get queryParameters => startIndex == null
      ? {
          "cx": cx,
          "q": queries,
          "safe": safe,
          "key": key,
        }
      : {
          "cx": cx,
          "q": queries,
          "safe": safe,
          "key": key,
          "startIndex": startIndex
        };
  // https://customsearch.googleapis.com/customsearch/v1?cx=df93080fceb189de3&q=cars&safe=off&key=AIzaSyCtfns7d6VJKzuNfORqO9pizhb0zYeh-Bw
}