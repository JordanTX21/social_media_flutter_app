import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';

class PublicationsViewer extends StatefulWidget {
  PublicationsViewer({Key? key}) : super(key: key);

  @override
  State<PublicationsViewer> createState() => _PublicationsViewerState();
}

class _PublicationsViewerState extends State<PublicationsViewer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TabBar(
            controller: _tabController,
            indicatorColor: MyColors.primaryColor,
            tabs: const [
              Tab(
                icon: Icon(Icons.square_rounded, color: Colors.black38),
              ),
              Tab(icon: Icon(Icons.video_library, color: Colors.black38)),
              Tab(icon: Icon(Icons.save_rounded, color: Colors.black38)),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              Center(
                child: Text('Publications'),
              ),
              Center(
                child: Text('Videos'),
              ),
              Center(
                child: Text('Guardados'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
