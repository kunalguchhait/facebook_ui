// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Postbar extends StatelessWidget {
  const Postbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () => print('User Avatar Clicked'),
          icon: const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/user/sonam.jpg'),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: const Text(
            "Write something here...",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 60,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () => print('Photo Clicked'),
              icon: const Icon(Icons.photo_album_outlined),
            ),
            const Text('Photo'),
          ],
        )
      ],
    );
  }
}
