// ignore_for_file: avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import
import 'package:facebook_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[
            Row(
              children: [
                IconButton(
                  iconSize: 50,
                  onPressed: () => {},
                  icon: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage(postData[i].avatarImage),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postData[i].name,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Wrap(
                        spacing: 10.0,
                        children: [
                          Text(
                            postData[i].time,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          const Icon(Icons.public),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  iconSize: 30.0,
                  onPressed: postData[i].moreOnPressed,
                  icon: const Icon(Icons.more_horiz_outlined),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      postData[i].postTitle,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Image(image: AssetImage(postData[i].postImage))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].LikeOnPressed,
                      icon: const Icon(Icons.thumb_up_alt_outlined),
                    ),
                    const Text(
                      '12',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].commentOnPressed,
                      icon: const Icon(Icons.message_outlined),
                    ),
                    const Text(
                      '10',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].shareOnPressed,
                      icon: const Icon(Icons.share_outlined),
                    ),
                    const Text(
                      '5',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                )
              ],
            ),
          ],
        ],
      ),
    );
  }
}
