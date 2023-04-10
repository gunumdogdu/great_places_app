import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';
import './view/places_list_view.dart';
import './view/add_place_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.from(
          colorScheme: ColorScheme.light().copyWith(
            primary: Colors.indigo,
            secondary: Colors.amber.shade500,
          ),
          textTheme: TextTheme(
            displaySmall: TextStyle(color: Colors.black),
            displayMedium: TextStyle(color: Colors.black),
            displayLarge: TextStyle(color: Colors.black),
            bodyLarge: TextStyle(color: Colors.black),
            bodySmall: TextStyle(color: Colors.black),
            titleSmall: TextStyle(color: Colors.black), // BUTTON COLOR
            titleMedium: TextStyle(color: Colors.black),
            titleLarge: TextStyle(color: Colors.black),
            bodyMedium: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        home: PlacesListView(),
        routes: {
          AddPlaceView.routeName: (ctx) => AddPlaceView(),
        },
      ),
    );
  }
}
