import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Modules/Home/HomeLayout.dart';
import 'package:social_media_flutter_app/src/Routes/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: Home.name,
      routes: Routes.rutes,
    );
  }
}

