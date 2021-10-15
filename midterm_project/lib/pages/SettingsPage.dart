import 'package:flutter/material.dart';
import 'package:midterm_project/pages/LoginPage.dart';
import 'LoginPage.dart';

void main() {
  runApp(SettingsPage());
}
class SettingsPage extends StatelessWidget {
  static String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Settings(),
    );
  }
}

class Settings extends StatefulWidget{
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Settings Page"),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.logout,
                    size: 12.0,
                  ),
                  label: Text("Logout Here"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                  },
                )
              ],
            ),
          ),
      ),
    );
  }
}