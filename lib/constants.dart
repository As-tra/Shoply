import 'package:shoply/core/utils/assets.dart';
import 'package:shoply/features/Onboarding/data/models/onboarding_model.dart';

const double kPadding = 24;

const List<OnboardingModel> kOnboardingItems = [
  OnboardingModel(
    image: Assets.imagesView1,
    title: 'Add To Favorite',
    descreption:
        "It's easy to add item you like in your favorites folder in Shoply",
  ),
  OnboardingModel(
    image: Assets.imagesView2,
    title: 'Get Notified !',
    descreption:
        "Stay up to date on your package's status with detailed notifications",
  ),
  OnboardingModel(
    image: Assets.imagesView3,
    title: 'Track Package !',
    descreption:
        "There is nothing easier than checking the status of your package with shoply",
  ),
  OnboardingModel(
    image: Assets.imagesView4,
    title: 'Exchange/Return Product ',
    descreption:
        "You can return or exchange the product within a few steps if you don't like it",
  ),
];
