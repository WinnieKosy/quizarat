import 'package:flutter/material.dart';
import 'package:fluttertask/presentation/widgets/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      initialRoute: '/',
      routes:AppRoutes.getRoues()
    );
  }
}


