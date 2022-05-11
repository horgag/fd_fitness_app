class Nutrients {
  const Nutrients({
    this.kcal = 0.0,
    this.carbs = 0.0,
    this.protein = 0.0,
    this.fat = 0.0,
  });

  Nutrients.fromJson(Map<String, dynamic> json)
      : kcal = json[kcalKey] ?? 0.0,
        carbs = json[carbsKey] ?? 0.0,
        protein = json[proteinKey] ?? 0.0,
        fat = json[fatKey] ?? 0.0;

  Map<String, dynamic> toJson() => <String, dynamic>{
        kcalKey: kcal,
        carbsKey: carbs,
        proteinKey: protein,
        fatKey: fat,
      };

  Nutrients calculateNutritents({
    required double servingSizeWeight,
    required int numberOfServings,
  }) =>
      Nutrients(
        kcal: kcal * servingSizeWeight * numberOfServings,
        carbs: carbs * servingSizeWeight * numberOfServings,
        protein: protein * servingSizeWeight * numberOfServings,
        fat: fat * servingSizeWeight * numberOfServings,
      );
  final double kcal, carbs, protein, fat;

  double get cal => kcal / 1000;

  static const String kcalKey = 'kcalKey', carbsKey = 'carbsKey', proteinKey = 'proteinKey', fatKey = 'fatKey';
}
