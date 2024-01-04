// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    Key? key,
    this.name,
    this.age,
  }) : super(key: key);
  final String? name;
  final String? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Screen2"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name!),
            const SizedBox(
              height: 10,
            ),
            Text(age!)
          ],
        ),
      ),
    );
  }
}
