import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_exm/utils/route_name.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Screen"),
        automaticallyImplyLeading: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Screen1'),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                var name = "Nitu";
                var age = "16";
                context.pushNamed(RouteNames.screen2,
                    pathParameters: {"name": name, "age": age});
              },
              child: const Text('Navigation with pathParameter')),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                var icon = Icons.headphones;

                context.pushNamed(RouteNames.screen3, extra: icon);
              },
              child: const Text('Navigation with Extra')),
        ],
      )),
    );
  }
}
