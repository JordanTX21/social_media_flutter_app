import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Layout.dart';

class Settings extends StatefulWidget {
  static const String name = "Settings";
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return LayOut(
      appbar: true,
      drawer: false,
      bottomnavigationbar: false,
      floatingactionbutton: false,
      titleAppbar: Settings.name,
      body: body(),
    );
  }

  body() {
    return Center(
      child: Text("Settings"),
    );
  }
}
