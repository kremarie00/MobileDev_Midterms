import 'package:flutter/material.dart';
import 'package:midterm_project/pages/SettingsPage.dart';
import '../pages/ProfilePage.dart';
import '../pages/SettingsPage.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      color: Colors.blue.shade900,
      child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          children: <Widget>[
            const SizedBox(
              height: 68,
            ),
            buildMenuItem(
                text: "Profile",
                icon: Icons.person,
                onClick: () => selectedItem(context, 0)),
            const SizedBox(
              height: 0,
            ),
            buildMenuItem(
              text: "Settings",
              icon: Icons.settings,
              onClick: () => selectedItem(context, 1),
            ),
          ]),
    ));
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClick,
}) {
  return ListTile(
    leading: Icon(icon, color: Colors.white),
    title: Text(text, style: TextStyle(color: Colors.white)),
    hoverColor: Colors.white70,
    onTap: onClick,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyHomePage()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SettingsPage()));
  }
}
