import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Modules/Chat/ChatLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Favorite/FavoriteLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Home/HomeLayout.dart';
import 'package:social_media_flutter_app/src/Modules/Search/SearchLayout.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Widgets/Drawer.dart';

class LayOutApp extends StatefulWidget {
  static const String name = "LayOutApp";
  const LayOutApp({Key? key}) : super(key: key);

  @override
  State<LayOutApp> createState() => _LayOutAppState();
}

class _LayOutAppState extends State<LayOutApp> {
  final PageController _pageController = PageController();
  String _selectedItem = "Home";
  final List _items = ["Home", "Search", "Favorite", "Profile"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: appBar(),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedItem = _items[index];
          });
        },
        controller: _pageController,
        children: const <Widget>[
          Home(),
          Search(),
          Favorite(),
          Chat()
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(),
      floatingActionButton: floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  appBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: const Text('Social Media App', style: TextStyle(fontWeight: FontWeight.bold)),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black45,
    );
  }

  void _onItemTappedOld(String name) {
    setState(() {
      _selectedItem = name;
    });
    Navigator.pushNamed(context, name);
  }

  bottomNavigationBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: SizedBox(
        height: 50,
        child: Row(
          children: <Widget>[
            const Spacer(),
            IconButton(
              color: _selectedItem == 'Home'? Colors.black54:Colors.black26,
              tooltip: 'Home',
              icon: const Icon(Icons.home),
              onPressed: () {
                _pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const Spacer(),
            IconButton(
              color: _selectedItem == 'Search'? Colors.black54:Colors.black26,
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {
                _pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            IconButton(
              color: _selectedItem == 'Favorite'? Colors.black54:Colors.black26,
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {
                _pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const Spacer(),
            IconButton(
              color: _selectedItem == 'Profile'? Colors.black54:Colors.black26,
              tooltip: 'Profile',
              icon: const Icon(Icons.chat_bubble_rounded),
              onPressed: () {
                _pageController.animateToPage(
                  3,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add_box),
      backgroundColor: MyColors.primaryColor,
    );
  }
}
