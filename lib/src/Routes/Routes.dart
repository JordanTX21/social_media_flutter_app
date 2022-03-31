import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Modules/Favorite/FavoriteLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Home/HomeLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Login/LoginLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Profile/ProfileLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Search/SearchLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Settings/SettingsLayout.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/LayOutApp.dart';

abstract class Routes {
  static Map<String, WidgetBuilder> rutes = {
    Login.name: (context) => const Login(),
    Home.name: (context) => const Home(),
    Search.name: (context) => const Search(),
    Profile.name: (context) => const Profile(),
    Favorite.name: (context) => const Favorite(),
    LayOutApp.name: (context) => const LayOutApp(),
    Settings.name: (context) => const Settings(),
  };
}
