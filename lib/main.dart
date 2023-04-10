import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Colors.amber, secondary: Colors.indigo),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      home: Container(),
    );
  }
}
