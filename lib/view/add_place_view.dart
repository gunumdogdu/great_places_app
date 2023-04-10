import 'package:flutter/material.dart';
import '../widgets/image_input.dart';

class AddPlaceView extends StatefulWidget {
  static const routeName = '/add-place';

  @override
  State<AddPlaceView> createState() => _AddPlaceViewState();
}

class _AddPlaceViewState extends State<AddPlaceView> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a New Place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: _titleController,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ImageInput(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 72,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              label: Text(
                'Add Place',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Theme.of(context).colorScheme.secondary),
            ),
          )
        ],
      ),
    );
  }
}
