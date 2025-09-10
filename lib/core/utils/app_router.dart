// import 'package:book_app/core/utils/service_locator.dart';
// import 'package:book_app/features/search/presentation/views/search_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
//
// import '../../features/splash/presentation/views/splash_view.dart';
// import '../../features/home/data/models/book_model/book_model.dart';
// import '../../features/home/data/repos/home_repo_impl.dart';
// import '../../features/home/presentstion/manger/smila_books_cubit/similar_books_cubit.dart';
// import '../../features/home/presentstion/views/book_details_view.dart';
// import '../../features/home/presentstion/views/home_view.dart';
//
// abstract class AppRouter {
//   static const kHomeView = '/homeView';
//   static const kBookDetailsView = '/bookDetailsView';
//   static const kSearchView = '/searchView';
//
//   static final router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => const SplashView(),
//       ),
//       GoRoute(
//         path: kHomeView,
//         builder: (context, state) => const HomeView(),
//       ),
//       GoRoute(
//         path: kSearchView,
//         builder: (context, state) => const SearchView(),
//       ),
//       GoRoute(
//         path: kBookDetailsView,
//         builder: (context, state) {
//           final book = state.extra;
//           if (book is! BookModel) {
//             return const Scaffold(
//               body: Center(
//                 child: Text('Invalid or missing book data'),
//               ),
//             );
//           }
//
//           return BlocProvider(
//             create: (context) => SimilarBooksCubit(
//               getIt.get<HomeRepoImpl>(),
//             ),
//             child: BookDetailsView(book: book),
//           );
//         },
//       ),
//     ],
//   );
// }
