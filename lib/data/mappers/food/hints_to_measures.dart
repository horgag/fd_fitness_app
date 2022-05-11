import 'package:collection/collection.dart';

import 'package:fd_fitness_app/data/food_api/models/food/food_hints.dart';
import 'package:fd_fitness_app/data/food_api/models/food/measures.dart' as data;
import 'package:fd_fitness_app/data/food_api/models/food/qualified.dart';
import 'package:fd_fitness_app/domain/models/food/measure.dart';
import 'package:fd_fitness_app/domain/models/food/servings_size.dart';

import '../mapper.dart';

class HintsToMeasuresMapper implements Mapper<HintsNet, Measures> {
  @override
  Measures map(HintsNet from) {
    final List<data.MeasuresNet> measures = from.measures;

    // 1. Filter Measusres by those that include Qualified list (it isn't empty for any of measures)
    // 1.1. Sort measures by lenth of Qualified list from the longest to the shortest
    final List<data.MeasuresNet> measuresSorted = measures.where((data.MeasuresNet el) => el.qualified.isNotEmpty).toList()
      ..sort((data.MeasuresNet obj1, data.MeasuresNet obj2) => obj2.qualified.length.compareTo(obj1.qualified.length))
      ..toList();

    // 1.2. If filtered and sorted list isn't empty
    if (measuresSorted.isNotEmpty) {
      return _fromQualified(measuresSorted);
    } 
    else {
      return _fromSpecifiedMeasure(measures);
    }
  }

  Measures _fromQualified(List<data.MeasuresNet> measuresSorted) {
    //  1.2.1. Use Measure object that has the longest list of Qualified items
    //  1.2.3. Sort Qualified list by weight from the lightest to the heaviest
    final List<QualifiedNet> qualifiedSorted = measuresSorted.first.qualified
      ..sort(
        (QualifiedNet obj1, QualifiedNet obj2) => obj1.weight?.compareTo(obj2.weight ?? 0.0) ?? 0,
      );

    final bool isQualifiedLengthMoreThan2 = qualifiedSorted.length > 2;
    final QualifiedNet medimSizedQualified =
        isQualifiedLengthMoreThan2 ? qualifiedSorted[qualifiedSorted.length ~/ 2] : qualifiedSorted.first;
    final double mediumSizedWeight = medimSizedQualified.weight ?? 0.0;

    //  1.2.4. ! Use sorted list of Qualified items to fill servingSizeList
    return Measures(
      label: measuresSorted.first.label ?? '',
      weight: mediumSizedWeight,
      servingSize: List<ServingSize>.from(
        qualifiedSorted
            .map(
              (QualifiedNet qualified) => ServingSize(
                weight: qualified.weight ?? 0.0,
                label: qualified.qualifiers.isNotEmpty ? qualified.qualifiers.first.label : null,
              ),
            )
            .toList(),
      ),
    );
  }

  Measures _fromSpecifiedMeasure(List<data.MeasuresNet> measures) {
    // 2. If there is no measures with Qualified list check measures by names Whole and Servings
    const String whole = 'whole', serving = 'serving';
    final data.MeasuresNet? measure = measures.firstWhereOrNull(
          (data.MeasuresNet element) => element.label?.toLowerCase() == whole,
        ) ??
        measures.firstWhereOrNull(
          (data.MeasuresNet element) => element.label?.toLowerCase() == serving,
        );
    // 2.1 Fill Measures model with default data
    // Is there is no weight it'd be set to 10 grams by default, 
    // and ServingSize list will be filled with small, medium and large types
    final double weight = measure?.weight ?? 10.0;
    return Measures(
      label: measure?.label ?? '',
      weight: weight,
      servingSize: ServingSize.defaultServingsSizeList(weight),
    );
  }
}
