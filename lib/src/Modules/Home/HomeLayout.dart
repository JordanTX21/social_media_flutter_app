import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
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
  ScrollController _scrollController = ScrollController();
  // ignore: prefer_final_fields
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  int length = 10;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() {
          print("end");
        });
      }
      if (_scrollController.offset <=
              _scrollController.position.minScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() {
          print("top");
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return body();
  }

  void _onRefresh() async {
    // monitor network fetch
    print("refresh");
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    setState(() {
      length = 10;
    });
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    print("cargando");
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    setState(() {
      length += 10;
    });
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  body() {
    return SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        controller: _refreshController,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: length,
          itemBuilder: (context, index) {
            return Publication();
          },
        ));
  }
}
