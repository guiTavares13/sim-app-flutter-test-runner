import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sim_app_flutter_testrunner/src/pages/views/generator_profile.dart';
import 'package:sim_app_flutter_testrunner/src/pages/views/home.dart';
import 'package:sim_app_flutter_testrunner/src/pages/views/profile.dart';
import 'package:sim_app_flutter_testrunner/src/providers/profile_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProfileProvider>(
          create: (_) => ProfileProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Colors.blue,
        ),
        home: const Home(),
        routes: {
          '/profileDetails': (context) => const Profile(),
          '/profileDetaila': (context) => const GeneratorProfile(),
        },
      ),
    );
  }
}
