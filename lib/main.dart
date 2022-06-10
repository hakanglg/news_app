import 'package:flutter/material.dart';
import 'package:news_app/core/init/theme/dark_theme.dart';
import 'package:news_app/feature/home/view/deneme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: darkTheme,
        home: const DenemeView());
  }
}
