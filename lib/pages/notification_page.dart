// ignore_for_file: avoid_print

import 'package:facebook_ui/models/notification_model.dart';
import 'package:flutter/material.dart';

class NotificatioPage extends StatefulWidget {
  const NotificatioPage({Key? key}) : super(key: key);

  @override
  State<NotificatioPage> createState() => _MessagePageState();
}

class _MessagePageState extends State<NotificatioPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Notification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {
                        print('Create New Message clicked');
                      },
                      icon: const Icon(Icons.check_circle),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      tooltip: 'Mark all notification as read',
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: notificationData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(notificationData[i].avatar),
                  ),
                  title: Text(
                    notificationData[i].name +
                        ' ' +
                        notificationData[i].description,
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text(notificationData[i].time),
                  trailing: IconButton(
                    iconSize: 20,
                    color: Colors.green,
                    onPressed: () => {},
                    icon: const Icon(Icons.more_vert_outlined),
                  ),
                  onTap: () {
                    print('Open Clicked User Profile');
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context)=>UserProfile()));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
