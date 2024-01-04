import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_exm/bloc/navigation/cubit/navigation_cubit.dart';
import 'package:go_router_exm/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationCubit>(
      create: (context) => NavigationCubit(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.deepPurple.shade50,
            appBarTheme:
                const AppBarTheme(color: Color.fromARGB(255, 120, 101, 153))),
        // routeInformationParser: AppRouter().router.routeInformationParser,
        // routerDelegate: AppRouter().router.routerDelegate,
      ),
    );
  }
}
