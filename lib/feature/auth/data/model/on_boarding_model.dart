import '../../../../core/app_assets.dart';
import '../../../../core/utils/app_strings.dart';

class OnBoardingModel {
  final String imagepath;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.imagepath, required this.title, required this.subTitle});
static List<OnBoardingModel> list = [
    OnBoardingModel(
        imagepath: AppAssets.on1,
        title: AppStrings.onBoardingTitleOne,
        subTitle: AppStrings.onBoardingSubTitleOne),
    OnBoardingModel(
        imagepath: AppAssets.on2,
        title: AppStrings.onBoardingTitleTwo,
        subTitle: AppStrings.onBoardingSubTitleTwo),
    OnBoardingModel(
        imagepath: AppAssets.on3,
        title: AppStrings.onBoardingTitleThree,
        subTitle: AppStrings.onBoardingSubTitleThree),
  ];  
}
