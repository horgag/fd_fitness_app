import 'food_hints.dart';
import 'food_links.dart';
import 'parsed_food.dart';

class FoodResponseNet {
  FoodResponseNet({this.text, this.parsed = const <ParsedNet>[], this.hints = const <HintsNet>[], this.lLinks});

  FoodResponseNet.fromJson(Map<String, dynamic> json)
      : text = json['text'],
        lLinks = json['_links'] != null ? LinksNet.fromJson(json['_links']) : null,
        parsed = json['parsed'] != null
            ? List<Map<String, dynamic>>.from(json['parsed'])
                .map<ParsedNet>(
                  (Map<String, dynamic> e) => ParsedNet.fromJson(e),
                )
                .toList()
            : <ParsedNet>[],
        hints = json['hints'] != null
            ? List<Map<String, dynamic>>.from(json['hints'])
                .map<HintsNet>(
                  (Map<String, dynamic> e) => HintsNet.fromJson(e),
                )
                .toList()
            : <HintsNet>[];

  final String? text;
  final List<ParsedNet> parsed;
  final List<HintsNet> hints;
  final LinksNet? lLinks;

  bool get hasNext => lLinks?.next != null;
  String? get nextLink => lLinks?.next?.href;
}
