import 'package:flutter/material.dart';

///Row Widget Example with Overflow
class RowExapmle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 100.0, width: 150.0, color: Colors.red),
        Container(height: 100.0, width: 150.0, color: Colors.yellow),
        Container(height: 100.0, width: 150.0, color: Colors.pink),
      ],
    );
  }
}


///Wrap Widget Example
class WrapExapmle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(height: 100.0, width: 150.0, color: Colors.red),
        Container(height: 100.0, width: 150.0, color: Colors.yellow),
        Container(height: 100.0, width: 150.0, color: Colors.pink),
      ],
    );
  }
}


///Using FittedBox to solve Row overflow
class FittedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Container(height: 100.0, width: 150.0, color: Colors.red),
          Container(height: 100.0, width: 150.0, color: Colors.yellow),
          Container(height: 100.0, width: 150.0, color: Colors.pink),
        ],
      ),
    );
  }
}
