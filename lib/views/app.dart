
import 'package:flutter/material.dart';
import 'package:fx_app_challenge/views/ui/home_page.dart';

class FxApp extends StatelessWidget {
  const FxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fx app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}