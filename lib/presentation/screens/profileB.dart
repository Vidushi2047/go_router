import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_exm/utils/route_name.dart';

class ProfileBScreen extends StatelessWidget {
  const ProfileBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Profile B'),
          ),
          TextButton(
              onPressed: () {
                context.pushNamed(RouteNames.profileBDetail);
              },
              child: Text('Profile B Detail'))
        ],
      ),
    );
  }
}
