import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Utils/IconString.dart';
import 'package:social_media_flutter_app/src/Utils/Pages.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Widgets/DrawerHeader.dart';


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final List<dynamic> mapbuild = Pages.pages;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: size.width * 0.75),
        child: Drawer(
          child: Column(
            children: [
              const MyDrawerHeader(),
              itemsDrawer()
            ],
        ),
      )
    );
  }

  Widget itemsDrawer() {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: mapbuild.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    onTap: () {
                      pressed(index);
                    },
                    leading: IconString.getIcon(mapbuild[index]['icon']),
                    title: Text(
                      mapbuild[index]['name'],
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ),
                  const Divider(
                    height: 0,
                  )
                ],
              );
            }),
      ),
    );
  }

  pressed(int index) {
      Navigator.pushNamed(context, mapbuild[index]['route']);
  }
}