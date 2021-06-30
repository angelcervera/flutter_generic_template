import 'package:flutter/material.dart';
import 'details.dart';
import 'list.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: PaginatedList()),
        SizedBox(width: 300, child: Card(child: Details()),)
      ],
    );
  }
}
