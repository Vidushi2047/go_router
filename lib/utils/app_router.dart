import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_exm/presentation/screens/bottom_nav_bar.dart';
import 'package:go_router_exm/presentation/screens/home_screen.dart';
import 'package:go_router_exm/presentation/screens/notFound_screen.dart';
import 'package:go_router_exm/presentation/screens/profileA.dart';
import 'package:go_router_exm/presentation/screens/profileA_detail.dart';
import 'package:go_router_exm/presentation/screens/profileB.dart';
import 'package:go_router_exm/presentation/screens/profileB_detail.dart';
import 'package:go_router_exm/presentation/screens/screen1.dart';
import 'package:go_router_exm/presentation/screens/screen2.dart';
import 'package:go_router_exm/presentation/screens/screen3.dart';
import 'package:go_router_exm/utils/route_name.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'navigator');
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'profileA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'profileB');

class AppRouter {
  static final _router = GoRouter(
    initialLocation: '/',
    navigatorKey: _navigatorKey,
    // redirect: (context, state) async {
    //   if (!isLoggedin) {
    //     return '/screen1';
    //   } else {
    //     return '/';
    //   }
    // },

    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
        // builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path:
            "/screen1", // for child route don't need to specify "/" character for router’s parents
        name: RouteNames.screen1,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Screen1());
        },
        // builder: (context, state) => const Screen1(),
      ),
      GoRoute(
        path:
            "/bottomBar", // for child route don't need to specify "/" character for router’s parents
        name: RouteNames.bottomBar,
        pageBuilder: (context, state) {
          return const MaterialPage(child: BottomAppBar());
        },
        // builder: (context, state) => const Screen1(),
      ),
      GoRoute(
        name: RouteNames.screen2,
        path: "/screen2/:name/:age",
        pageBuilder: (context, state) {
          return MaterialPage(
            child: Screen2(
              name: state.pathParameters[
                  "name"]!, //with the help of pathParameter we can pass no of parameters
              age: state.pathParameters['age']!,
            ),
          );
        },
      ),
      GoRoute(
          name: RouteNames.screen3,
          path: "/screen3",
          builder: (context, state) {
            IconData icon = state.extra
                as IconData; //with the help of extra we can pass object or model
            return Screen3(
              icon: icon,
            );
          }),
      StatefulShellRoute.indexedStack(
          builder: (context, _, shell) => BottomNavBar(shell: shell),
          branches: [
            StatefulShellBranch(navigatorKey: _shellNavigatorAKey, routes: [
              GoRoute(
                  parentNavigatorKey: _shellNavigatorAKey,
                  path: '/profileA',
                  name: RouteNames.profileA,
                  builder: (context, state) => const ProfileScreen(),
                  routes: [
                    GoRoute(
                        parentNavigatorKey: _navigatorKey,
                        path: 'profileADetail',
                        name: RouteNames.profileADetail,
                        builder: (context, state) =>
                            const ProfileADetailScreen())
                  ])
            ]),
            StatefulShellBranch(navigatorKey: _shellNavigatorBKey, routes: [
              GoRoute(
                  parentNavigatorKey: _shellNavigatorBKey,
                  path: '/profileB',
                  name: RouteNames.profileB,
                  builder: (context, state) => const ProfileBScreen(),
                  routes: [
                    GoRoute(
                        parentNavigatorKey: _navigatorKey,
                        path: 'profileBDetail',
                        name: RouteNames.profileBDetail,
                        builder: (context, state) =>
                            const ProfileBDetailScreen())
                  ])
            ])
          ])
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
  static GoRouter get router => _router;
}
