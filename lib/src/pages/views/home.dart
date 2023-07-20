import 'package:flutter/material.dart';
import 'package:sim_app_flutter_testrunner/src/pages/views/generator_profile.dart';
import 'package:sim_app_flutter_testrunner/src/pages/views/list_profile.dart';
import 'package:sim_app_flutter_testrunner/src/pages/views/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Profile(),
          Center(child: ListProfile()),
          Row(
            children: [
              GeneratorProfile(),
            ],
          )
        ],
      ),
    );
  }
}
