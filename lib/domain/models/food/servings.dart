import 'nutrients.dart';
import 'servings_size.dart';

const double GLASS_OF_WATER_ML = 250.0;
const double RECOMMENDED_WATER = 2000.0;

class Servings {
  const Servings({this.number = 1, required this.servingSize, required this.nutrients});

  const Servings.waterGlass(this.number)
      : nutrients = const Nutrients(),
        servingSize = const ServingSize(weight: GLASS_OF_WATER_ML);

  Servings.fromJson(Map<String, dynamic> json)
      : number = json[numberKey],
        servingSize = json[servingSizeKey] != null ? ServingSize.fromJson(json[servingSizeKey]) : ServingSize.defaultServingsSizeList()[1],
        nutrients = json[nutrientsKey] != null ? Nutrients.fromJson(json[nutrientsKey]) : const Nutrients();

  Servings.copyWith(
    Servings copy, {
    int? number,
    ServingSize? servingSize,
    Nutrients? nutrients,
  })  : number = number ?? copy.number,
        servingSize = servingSize ?? copy.servingSize,
        nutrients = nutrients ?? copy.nutrients;

  final int number;
  final ServingSize servingSize;
  final Nutrients nutrients;

  static const String numberKey = 'numberKey', servingSizeKey = 'servingSizeKey', nutrientsKey = 'nutrientsKey';

  Map<String, dynamic> toJson() => <String, dynamic>{
        numberKey: number,
        servingSizeKey: servingSize.toJson(),
        nutrientsKey: nutrients.toJson(),
      };
}
