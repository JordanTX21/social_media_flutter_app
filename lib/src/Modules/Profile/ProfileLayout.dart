import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Layout.dart';

class Profile extends StatefulWidget {
  static const String name = "Profile";
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return LayOut(
      appbar: true,
      drawer: false,
      bottomnavigationbar: false,
      floatingactionbutton: false,
      titleAppbar: Profile.name,
      body: body(),
    );
  }

  body() {
    return Center(
      child: Text(Profile.name),
    );
  }
}
