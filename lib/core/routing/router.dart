import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sott/features/home_page/presentation/manager/home_bloc.dart';
import 'package:sott/features/home_page/presentation/pages/home_view.dart';
import 'package:sott/core/routing/routes.dart';

final GoRouter router = GoRouter(
  initialLocation: routes.home,
  routes: [
    GoRoute(
      path: routes.home,
      builder:
          (context, state) => BlocProvider(
            create: (context) => HomeBloc(repo: context.read()),
            child: HomeView(),
          ),
    ),
  ],
);
