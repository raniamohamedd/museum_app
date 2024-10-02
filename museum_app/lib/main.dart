import 'package:flutter/material.dart';
import 'package:museum_app/page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'museum',
        home: HomePage(),
      );
}
