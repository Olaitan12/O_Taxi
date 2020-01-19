import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:o_taxi/states/app_state.dart';
import 'screens/home.dart';

void main() {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AppState(),)
  ],
    child: MyApp(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'O_Taxi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'O_Taxi'),
    );
  }
}