import 'package:flutter/material.dart';
import 'package:flutter_generic_template/users/landing.dart';

import 'commons/generic_theme.dart';
import 'commons/menus/main_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Generic Template',
      debugShowCheckedModeBanner: false,
      theme: genericThemeData,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 256,
          // leading: SizedBox(
          //   width: 256,
          //   child: Placeholder(),
          // ), // This remove the Drawer button
          title: Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Image.asset(
              'placeholder.png',
              height: 35.0,
              fit: BoxFit.cover,
            ),
          ),
          // actions: [Placeholder(), Placeholder()],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 256,
                child: MainMenu(),
              ),
              Expanded(child: Landing())
            ],
          ),
        ),
      ),
    );
  }
}


