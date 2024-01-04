// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:go_router_exm/bloc/navigation/cubit/navigation_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.shell,
  }) : super(key: key);

  final StatefulNavigationShell shell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: shell.currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            onTap: (index) {
              if (index != shell.currentIndex) {
                shell.goBranch(
                  index,
                );
              }

              // context.read<NavigationCubit>().ChangeScreen(index);
            }),
        body: shell);
  }
}
