import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Layout.dart';

class Search extends StatefulWidget {
  static const String name = "Search";
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return LayOut(
      appbar: true,
      drawer: true,
      bottomnavigationbar: true,
      floatingactionbutton: true,
      titleAppbar: Search.name,
      body: body(),
    );
  }

  body() {
    return Container(
      
    );
  }
}
