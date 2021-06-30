import 'package:flutter/material.dart';

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
        // trailing: Icon(Icons.arrow_drop_down_circle_outlined),
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
          ListTile(
            leading: Icon(
              Icons.check_circle,
            ),
            title: Text("Validation"),
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
          Divider(),
          ListTile(
            trailing: Icon(
              Icons.arrow_back_ios,
            ),
            onTap: () {},
          ),
          Divider(),
        ],
      ),
    );
  }
}
