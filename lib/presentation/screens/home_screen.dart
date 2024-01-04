import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_exm/presentation/screens/profileA.dart';
import 'package:go_router_exm/presentation/screens/screen1.dart';
import 'package:go_router_exm/utils/route_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    print('home Screen');
  }

  List<Widget> screens = [const Screen1(), const ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.pushNamed(RouteNames.screen1);
                  // context.goNamed(RouteNames.screen1);
                },
                child: const Text('go to main screen')),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  context.pushNamed(RouteNames.profileA);
                  // context.goNamed(RouteNames.screen1);
                },
                child: const Text('profile screen')),
          ],
        ),
      ),
    );
    // BlocBuilder<NavigationCubit, NavigationState>(
    //   builder: (context, state) {
    //     return Scaffold(
    //         bottomNavigationBar: BottomNavigationBar(
    //             currentIndex: state.index,
    //             items: const [
    //               BottomNavigationBarItem(
    //                   icon: Icon(Icons.home), label: 'home'),
    //               BottomNavigationBarItem(
    //                   icon: Icon(Icons.person), label: 'Profile'),
    //             ],
    //             onTap: (index) {
    //               context.read<NavigationCubit>().ChangeScreen(index);
    //             }),
    //         body: screens.elementAt(state.index));
    //   },
    // );
  }
}
