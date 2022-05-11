import 'package:hive/hive.dart';

const int foodLocalTypeIndex = 0, measuresLocalTypeIndex = 1, nutrientsLocalTypeIndex = 2, servingSizeLocalIndex = 3;

class FoodLocalType extends HiveType {
  const FoodLocalType() : super(typeId: foodLocalTypeIndex);
}

class MeasuresLocalType extends HiveType {
  const MeasuresLocalType() : super(typeId: measuresLocalTypeIndex);
}

class NutrientsLocalType extends HiveType {
  const NutrientsLocalType() : super(typeId: nutrientsLocalTypeIndex);
}

class ServingSizeLocalType extends HiveType {
  const ServingSizeLocalType() : super(typeId: servingSizeLocalIndex);
}
