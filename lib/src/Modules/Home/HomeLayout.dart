import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Modules/Home/Widgets/Publication.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Layout.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Widgets/Drawer.dart';

class Home extends StatefulWidget {
  static const String name = "Home";
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayOut(
      appbar: true,
      drawer: true,
      bottomnavigationbar: true,
      floatingactionbutton: true,
      titleAppbar: 'Home',
      body: body(),
    );
  }

  body() {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Publication();
        },
      ),
    );
  }
}