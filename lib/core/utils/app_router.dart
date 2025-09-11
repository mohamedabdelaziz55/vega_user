

import 'package:go_router/go_router.dart';
import 'package:vega_user/features/onboard/presentstion/views/onboarding_view.dart';

import '../../features/splash/presentstion/views/splash_view.dart';

abstract class AppRouter {
  static const konBoard = '/onBoardView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: konBoard,
        builder: (context, state) => const OnboardingView(),
      ),

    ],
  );
}
