import 'package:flutter/material.dart';
import './add_place_view.dart';

class PlacesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceView.routeName);
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
