import 'package:flutter/material.dart';
import 'package:sim_app_flutter_testrunner/src/pages/components/profiles_list.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Perfis Cadastrados',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            width: 300,
            height: 440,
            child: ProfilesList(),
          ),
        ),
      ],
    );
  }
}
