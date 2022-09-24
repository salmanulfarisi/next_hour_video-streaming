abstract class Routes {
  Routes._();
  static const splash = Paths.splash;
  static const onBoarding = Paths.onBoarding;
  static const logIn = Paths.login;
  static const signUp = Paths.signup;
  static const home = Paths.home;
  static const forgetPage = Paths.forgetPass;
}

abstract class Paths {
  Paths._();
  static const splash = '/splash';
  static const onBoarding = '/onBoarding';
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';
  static const forgetPass = '/forgetpass';
}
