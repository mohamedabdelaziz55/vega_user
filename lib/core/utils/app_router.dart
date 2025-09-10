

import 'package:go_router/go_router.dart';

import '../../features/splash/presentstion/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      // GoRoute(
      //   path: kHomeView,
      //   builder: (context, state) => const HomeView(),
      // ),
      // GoRoute(
      //   path: kSearchView,
      //   builder: (context, state) => const SearchView(),
      // ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) {
      //     final book = state.extra;
      //     if (book is! BookModel) {
      //       return const Scaffold(
      //         body: Center(
      //           child: Text('Invalid or missing book data'),
      //         ),
      //       );
      //     }
      //
      //     return BlocProvider(
      //       create: (context) => SimilarBooksCubit(
      //         getIt.get<HomeRepoImpl>(),
      //       ),
      //       child: BookDetailsView(book: book),
      //     );
      //   },
      // ),
    ],
  );
}
