import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tourism_app_project/screens/1introscreen.dart';
import 'package:tourism_app_project/screens/6details.dart';

import 'model/users.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UsersAdapter()); // Register all other adapters as well

  // Check if the box is already open
  if (!Hive.isBoxOpen('users')) {
    await Hive.openBox<Users>('users');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
      routes: {'details': (context) => DetailsPage()},
      onDispose: () {
        // Close the Hive box when the app is disposed
        Hive.close();
      },
    );
  }
}
