import 'package:fd_fitness_app/data/food_api/models/food/qualified.dart';

class MeasuresNet {
  MeasuresNet({this.uri, this.label, this.weight, this.qualified = const <QualifiedNet>[]});

  MeasuresNet.fromJson(Map<String, dynamic> json)
      : uri = json['uri'],
        label = json['label'],
        weight = json['weight'],
        qualified = json['qualified'] != null
            ? List<Map<String, dynamic>>.from(json['qualified'])
                .map<QualifiedNet>(
                  (Map<String, dynamic> e) => QualifiedNet.fromJson(e),
                )
                .toList()
            : <QualifiedNet>[];

  final String? uri, label;
  final double? weight;
  final List<QualifiedNet> qualified;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'uri': uri,
        'label': label,
        'weight': weight,
        'qualified': qualified.map((QualifiedNet v) => v.toJson()).toList(),
      };

  @override
  String toString() => toJson().toString();
}
