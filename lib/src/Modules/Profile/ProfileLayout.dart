// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Modules/Profile/Widgets/PublicationsViewer.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Layout.dart';

class Profile extends StatefulWidget {
  static const String name = "Profile";
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  void initState() {
    super.initState();
  }

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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://picsum.photos/200/300/?random',
                ),
                radius: 35.0,
              ),
              title: Text(
                'UserName',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              subtitle: Text(
                '@username',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              trailing: IconButton(
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                tooltip: 'Search',
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              profileStat(title: 'Posts', subtitle: '567'),
              profileStat(title: 'Followers', subtitle: '567'),
              profileStat(title: 'Following', subtitle: '567'),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 15,
              bottom: 10,
            ),
            child: const Text(
              '21 y.o | Barcelona, Spain \n5 Years Experience\nHello World',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 10,
            ),
            child: FlatButton(
                height: 50,
                onPressed: () {},
                padding: const EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Ink(
                  height: 50,
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
                  child: const Center(
                    child: Text(
                      "Seguir",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ),
          PublicationsViewer(),
        ],
      ),
    );
  }

  Widget profileStat(
      {String title = '', String subtitle = '', IconData? icon}) {
    return Column(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 2.0),
        child: Text(title,
            style: const TextStyle(
                color: Colors.black26, fontWeight: FontWeight.w500)),
      ),
      Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: Text(subtitle,
              style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54)))
    ]);
  }
}
