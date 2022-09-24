class OnboardingModel {
  final String image;
  final String discription;

  OnboardingModel(this.image, this.discription);
}

List<OnboardingModel> contents = [
  OnboardingModel('assets/onboard1.svg',
      'Watching intresting Videos from around the world'),
  OnboardingModel(
      'assets/onboard2.svg', 'Watching Trending shorts from around the world'),
  OnboardingModel(
      'assets/onboard3.svg', "Let's Explore the videos with Next Hour Now!"),
];
