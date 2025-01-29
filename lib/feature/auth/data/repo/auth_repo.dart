import '../../../../core/database/cache/cach_helper.dart';
import '../../../../core/utils/app_strings.dart';

class AuthRepo {
  final CacheHelper cacheHelper;
  AuthRepo({required this.cacheHelper});
  Future<bool> isVisited() async {
    final bool onbarding =
        await cacheHelper.getData(key: AppStrings.onBoardingKey) ?? false;
    return onbarding;
  }

  savedata() {
    cacheHelper.saveData(key: AppStrings.onBoardingKey, value: true);
  }
}
