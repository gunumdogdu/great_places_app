import 'package:flutter/material.dart';
import 'dart:io';

class ImageInput extends StatefulWidget {
  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  var _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: _storedImage != null
              ? Image.file(
                  _storedImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text(
                  'No Image Taken',
                  textAlign: TextAlign.center,
                ),
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: TextButton.icon(
            style: TextButton.styleFrom(
                foregroundColor: Colors.indigo, backgroundColor: Colors.amber),
            onPressed: () {},
            label: Text('Take Picture'),
            icon: Icon(Icons.camera),
          ),
        )
      ],
    );
  }
}
