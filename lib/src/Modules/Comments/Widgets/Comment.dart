// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 10,
          bottom: 10,
        ),
        elevation: 5,
        shadowColor: MyColors.shadowColor,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
          ),
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/200/300/?random',
                  ),
                ),
                title: const Text('UserName'),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                trailing: IconButton(
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.centerRight,
                  color: Colors.black26,
                  tooltip: 'Fav',
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: const Text('2h ago',
                        style: TextStyle(color: Colors.black38, fontSize: 12)),
                  ),
                  const Text('25',
                      style: TextStyle(color: Colors.black38, fontSize: 12)),
                  const Icon(Icons.favorite, color: Colors.black38, size: 15),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Responder',
                          style:
                              TextStyle(color: Colors.black38, fontSize: 12)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
