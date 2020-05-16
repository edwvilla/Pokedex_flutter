import 'package:flutter/material.dart';
import 'package:pokedex/pages/loading_scree.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
      title: 'Pokedex',
      home: LoadingScreen(),
    );
  }
}
