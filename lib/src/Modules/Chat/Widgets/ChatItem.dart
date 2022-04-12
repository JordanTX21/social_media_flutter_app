import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';

class ChatItem extends StatefulWidget {
  ChatItem({Key? key}) : super(key: key);

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 5,
          bottom: 5,
        ),
        shadowColor: MyColors.shadowColor,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/200/300/?random',
                  ),
                ),
                title: const Text(
                  'UserName',
                  style: TextStyle(
                    color: MyColors.primaryBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(
                    color: MyColors.secondaryGray,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Column(
                  children: [
                    const Text(
                      '12 min',
                      style: TextStyle(
                        color: MyColors.primaryGray,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
