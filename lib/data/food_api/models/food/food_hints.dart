import 'measures.dart';
import 'parsed_food.dart';

class HintsNet {
  HintsNet({this.food, this.measures = const <MeasuresNet>[]});

  HintsNet.fromJson(Map<String, dynamic> json)
      : food = json['food'] != null ? FoodNet.fromJson(json['food']) : null,
        measures = json['measures'] != null
            ? List<Map<String, dynamic>>.from(json['measures'])
                .map<MeasuresNet>(
                  (Map<String, dynamic> e) => MeasuresNet.fromJson(e),
                )
                .toList()
            : <MeasuresNet>[];

  final FoodNet? food;
  final List<MeasuresNet> measures;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'food': food?.toJson(),
        'measures': measures.map((MeasuresNet v) => v.toJson()).toList(),
      };
}
