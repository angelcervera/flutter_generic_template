import 'package:flutter/material.dart';

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
      theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity),
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
              Expanded(child: Body())
            ],
          ),
        ),
      ),
    );
  }
}

class MenuGroup extends StatelessWidget {
  const MenuGroup({Key? key, required this.groupTitle, required this.groupIcon})
      : super(key: key);

  final String groupTitle;
  final IconData groupIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: ListTile(
        leading: Icon(groupIcon),
        title: Text(groupTitle),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView(
        children: [
          MenuGroup(
              groupTitle: "NFT Management",
              groupIcon: Icons.filter_frames_outlined),
          ListTile(
            leading: Icon(
              Icons.report,
            ),
            title: Text("Report"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.manage_search,
            ),
            title: Text("Management"),
            onTap: () {},
          ),
          Divider(),
          MenuGroup(
              groupTitle: "Administration",
              groupIcon: Icons.admin_panel_settings),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text("Users"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.lock,
            ),
            title: Text("Roles"),
            onTap: () {},
          ),
          Divider()
        ],
      ),
    );
  }
}

class DeviceType {}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
