import 'package:fd_fitness_app/domain/models/user_model/health/activity_level_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/sex_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';

class HealthHelper {
  static int bmr(UserModel model) {
    if (!model.isValidHealthProperties) return -1;
    const int menCoeff = 5, womenCoeff = -161;
    const double weightConst = 10, heightConst = 6.25, ageConst = 5;
    
    final int coeff = model.sex == SexType.male ? menCoeff : womenCoeff;
    final int age = userAge(model.dateOfBirth!);

    final double bmr = weightConst * model.weight! + heightConst * model.height! - ageConst * age + coeff;
    final double bmrWithActivity = bmr * activityFator(model.activenessDuringDay!);
    return bmrWithActivity.toInt();
  }

  static int userAge(DateTime dateTime) => DateTime.now().year - dateTime.year;

  static double activityFator(ActivityLevelType activenessDuringDayType) {
    if (activenessDuringDayType == ActivityLevelType.bad) {
      return 1.2;
    } else if (activenessDuringDayType == ActivityLevelType.moderate) {
      return 1.55;
    } else if (activenessDuringDayType == ActivityLevelType.high) {
      return 1.9;
    } else {
      return 1;
    }
  }
}
