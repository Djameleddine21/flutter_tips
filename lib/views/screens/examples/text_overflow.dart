import 'package:flutter/material.dart';

class TextOverflowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //image
        Container(
          width: 150.0,
          height: 100.0,
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
        //text
        Flexible(
          child: Text("Hello This is an example of overflow in Flutter"),
        ),
      ],
    );
  }
}
