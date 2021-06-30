import 'package:flutter/material.dart';

class LandingMock extends StatelessWidget {
  const LandingMock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Card(child: Container(),)),
        SizedBox(width: 300, child: Card(child: Container()),)
      ],
    );
  }
}
