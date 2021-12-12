import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/app.dart';
import 'package:flutter_application_2/pages/home/index.dart';

import './navigations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: RoutersNames.home,
      home: HomePageContainer(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
