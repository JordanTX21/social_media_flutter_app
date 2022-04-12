import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:social_media_flutter_app/src/Modules/Chat/Widgets/ChatItem.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';

class Chat extends StatefulWidget {
  static const String name = "Chat";
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: MyColors.shadowColor,
                    blurRadius: 20.0,
                    offset: Offset(0, 10))
              ]),
          child: TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.search, color: Colors.grey[400]),
                border: InputBorder.none,
                hintText: "Buscar Chat...",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[400])),
          ),
        ),
        Expanded(
          child: SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              onRefresh: _onRefresh,
              onLoading: _onLoading,
              controller: _refreshController,
              child: CustomScrollView(
                controller: _scrollController,
                slivers: <Widget>[
                  SliverToBoxAdapter(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              "Conectados",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey[400]),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 10,
                          bottom: 10,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              friendConnected(),
                              friendConnected(),
                              friendConnected(),
                              friendConnected(),
                              friendConnected(),
                              friendConnected(),
                              friendConnected(),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              "Chats",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey[400]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ChatItem();
                      },
                      childCount: length,
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }

  Widget friendConnected() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0), //or 15.0
                child: const SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Image(
                    centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                    image: NetworkImage(
                      'https://picsum.photos/200/300/?random',
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 85, 253, 91),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                              color: MyColors.shadowColor,
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ])),
              ),
            ],
          ),
          Text(
            "UserName",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
