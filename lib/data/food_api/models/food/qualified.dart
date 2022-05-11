import 'package:fd_fitness_app/data/food_api/models/food/qualifiers.dart';

class QualifiedNet {
  QualifiedNet({this.qualifiers = const <QualifiersNet>[], this.weight});

  QualifiedNet.fromJson(Map<String, dynamic> json)
      : qualifiers = json['qualifiers'] != null
            ? List<Map<String, dynamic>>.from(json['qualifiers'])
                .map<QualifiersNet>((Map<String, dynamic> e) => QualifiersNet.fromJson(e))
                .toList()
            : <QualifiersNet>[],
        weight = json['weight'];

  final List<QualifiersNet> qualifiers;
  final double? weight;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'qualifiers': qualifiers.map((QualifiersNet v) => v.toJson()).toList(),
        'weight': weight,
      };

  @override
  String toString() => toJson().toString();
}
