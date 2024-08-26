import 'package:figma/order.dart';
// import 'package:figma/services/sql_lite.dart';
import 'package:figma/util.dart';
// import 'package:figma/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  await registerServices();
  // await DatabaseService.instance.getMealItems();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const FigmaPage(),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const FigmaPage(),
      },
    );
  }
}
