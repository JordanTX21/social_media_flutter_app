import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Widgets/Drawer.dart';

class LayOut extends StatefulWidget {
  final Widget body;
  final String? titleAppbar;
  final bool appbar;
  final bool drawer;
  final bool bottomnavigationbar;
  final Widget? mybootomnavigationbar;
  final bool floatingactionbutton;
  final List<Widget>? menuButom;
  final Color colorText;
  final Color colorBar;
  final double sizeTextTitle;
  final Widget? leading;
  const LayOut(
      {Key? key,
      required this.body,
      required this.bottomnavigationbar,
      required this.floatingactionbutton,
      this.titleAppbar,
      required this.appbar,
      this.colorText = Colors.white,
      this.colorBar = const Color.fromARGB(255, 30, 119, 235),
      this.sizeTextTitle = 17,
      required this.drawer,
      this.menuButom,
      this.leading, this.mybootomnavigationbar})
      : super(key: key);

  @override
  State<LayOut> createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  String _selectedItem = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: widget.drawer ? const DrawerWidget() : null,
      appBar: widget.appbar ? appBar() : null,
      body: widget.body,
      bottomNavigationBar:
          widget.bottomnavigationbar ? bottomNavigationBar() : widget.mybootomnavigationbar,
      floatingActionButton:
          widget.floatingactionbutton ? floatingActionButton() : null,
      floatingActionButtonLocation: widget.floatingactionbutton
          ? FloatingActionButtonLocation.centerDocked
          : null,
    );
  }

  appBar() {
    return AppBar(
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              MyColors.primaryColor,
              MyColors.secondaryColor,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      centerTitle: false,
      title: Text(widget.titleAppbar ?? '',
          style: const TextStyle(
              fontWeight: FontWeight.bold)),
      actions: widget.menuButom,
      elevation: 0,
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
              color: Colors.black26,
              tooltip: 'Home',
              icon: const Icon(Icons.home),
              onPressed: () {
                _onItemTappedOld('Home');
              },
            ),
            const Spacer(),
            IconButton(
              color: Colors.black26,
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {
                _onItemTappedOld('Search');
              },
            ),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            IconButton(
              color: Colors.black26,
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {
                _onItemTappedOld('Favorite');
              },
            ),
            const Spacer(),
            IconButton(
              color: Colors.black26,
              tooltip: 'Profile',
              icon: const Icon(Icons.person),
              onPressed: () {
                _onItemTappedOld('Profile');
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
