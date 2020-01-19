import 'package:flutter/material.dart';
import 'package:o_taxi/states/app_state.dart';
import 'package:provider/provider.dart';
import 'screens/home.dart';

void main () {
  return runApp(MultiProvider(providers: [
      ChangeNotifierProvider.value(value: AppState(),)

  ],
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "O_TAXI",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "O_TAXI"),
    );
  }
}