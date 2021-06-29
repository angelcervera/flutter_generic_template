import 'package:flutter/material.dart';
import 'details.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Card(child: Container())),
        SizedBox(width: 300, child: Card(child: Details()),)
      ],
    );
  }
}
