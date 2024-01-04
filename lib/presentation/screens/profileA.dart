import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_exm/utils/route_name.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('profile A'),
            SizedBox(
              height: 34,
            ),
            TextButton(
                onPressed: () {
                  context.pushNamed(RouteNames.profileADetail);
                },
                child: Text('Profile A Detail'))
          ],
        ),
      ),
    );
  }
}
