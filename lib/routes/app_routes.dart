import 'package:flutter/material.dart';
import 'package:posyandu/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:posyandu/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:posyandu/presentation/register_one_screen/register_one_screen.dart';
import 'package:posyandu/presentation/data_balita_one_screen/data_balita_one_screen.dart';
import 'package:posyandu/presentation/register_eight_screen/register_eight_screen.dart';
import 'package:posyandu/presentation/home_screen/home_screen.dart';
import 'package:posyandu/presentation/data_anak_screen/data_anak_screen.dart';
import 'package:posyandu/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String dataBalitaOneScreen = '/data_balita_one_screen';

  static const String registerEightScreen = '/register_eight_screen';

  static const String akunPage = '/akun_page';

  static const String akunOnePage = '/akun_one_page';

  static const String homeScreen = '/home_screen';

  static const String dataAnakScreen = '/data_anak_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    registerOneScreen: (context) => RegisterOneScreen(),
    dataBalitaOneScreen: (context) => DataBalitaOneScreen(),
    registerEightScreen: (context) => RegisterEightScreen(),
    homeScreen: (context) => HomeScreen(),
    dataAnakScreen: (context) => DataAnakScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
