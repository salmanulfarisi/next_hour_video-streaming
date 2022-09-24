import 'package:get/get.dart';
import 'package:next_hour/app/modules/dashboard/binding/dashboard_bindings.dart';
import 'package:next_hour/app/modules/dashboard/view/dashboard_view.dart';
import 'package:next_hour/app/modules/forgetpage/bindings/forgetpage_binding.dart';
import 'package:next_hour/app/modules/forgetpage/view/forgetpage.dart';
import 'package:next_hour/app/modules/home/bindings/home_binding.dart';
import 'package:next_hour/app/modules/home/view/home.dart';
import 'package:next_hour/app/modules/login/bindings/login_bindings.dart';
import 'package:next_hour/app/modules/login/view/login_screen.dart';
import 'package:next_hour/app/modules/onboarding/binging/onboarding_bindings.dart';
import 'package:next_hour/app/modules/onboarding/view/onbording.dart';
import 'package:next_hour/app/modules/signup/bindings/signup_bindings.dart';
import 'package:next_hour/app/modules/signup/view/signup.dart';
import 'package:next_hour/app/modules/splash/binding/splash_bindings.dart';
import 'package:next_hour/app/modules/splash/view/splash_view.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initail = Routes.splash;

  static final routes = [
    GetPage(
        name: Paths.splash,
        page: () => const SplashView(),
        binding: SplashBindings()),
    GetPage(
        name: Paths.onBoarding,
        page: () => const OnbBoardingView(),
        binding: OnBoardingBinding()),
    GetPage(
        name: Paths.login,
        page: () => const LoginPage(),
        binding: LoginBindings()),
    GetPage(
        name: Paths.forgetPass,
        page: () => const ForgetPageView(),
        binding: ForgetPageBinding()),
    GetPage(
        name: Paths.signup,
        page: () => const SignUpView(),
        binding: SignupBinding()),
    GetPage(
      name: Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.dashboardpage,
      page: () => const DashboardView(),
      binding: DashboardBindings(),
    )
  ];
}
