import 'package:app_testes_unitarios/core/inejection/injection.dart';
import 'package:app_testes_unitarios/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  setupInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage()
    );
  }
}

