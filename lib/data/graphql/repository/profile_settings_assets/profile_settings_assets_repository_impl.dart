import 'package:fd_fitness_app/data/api/constants.dart';
import 'package:fd_fitness_app/domain/abstract/repository/profile_settings_assets/profile_settings_assets_repository.dart';

class ProfileSettingsAssetsRepositoryImpl extends ProfileSettingsAssetsRepository {
  @override
  String getImageUrl() => profileSettingsUrl;
}
