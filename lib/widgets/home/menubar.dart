// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => print('Add Post Clicked'),
          child: Row(
            children: [
              const Icon(Icons.post_add_outlined),
              Text(
                'text',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () => print('Video Live Clicked'),
          child: Row(
            children: [
              const Icon(
                Icons.video_call,
                color: Colors.redAccent,
              ),
              Text(
                'Live Video',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () => print('Location Clicked'),
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Text(
                'Location',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
