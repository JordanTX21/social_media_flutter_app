import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Layout.dart';

class Favorite extends StatefulWidget {
  static const String name = "Favorite";
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return body();
  }

  body() {
    return Center(
      child: Text(Favorite.name),
    );
  }
}
