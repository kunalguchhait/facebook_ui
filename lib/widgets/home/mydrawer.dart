// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:facebook_ui/pages/friends_page.dart';
import 'package:facebook_ui/pages/marketPlace_page.dart';
import 'package:facebook_ui/pages/message_page.dart';
import 'package:facebook_ui/pages/profile_page.dart';
import 'package:facebook_ui/pages/video_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => {Navigator.of(context).pop()},
                    icon: const Icon(Icons.arrow_back),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  const Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        print('Search Clicked');
                      },
                      icon: const Icon(Icons.search_outlined),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/user/kunal.jpg'),
                  ),
                  title: const Text(
                    'Kunal Guchhait',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text('View Your Profile'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    ),
                  },
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.coronavirus_rounded,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Covid-19 Information Center',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => print('Covid Icon Tapped'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  title: const Text(
                    'Messages',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const MessagePage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.group,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Group',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('Group Tapped')},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.shopping_bag,
                    color: Colors.blueAccent,
                  ),
                  title: const Text(
                    'Marketplace',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const MarketPlacePage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Colors.green,
                  ),
                  title: const Text(
                    'Friends',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const FriendsPage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.video_label,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Videos',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const VideoPage(),
                          ),
                        ),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.pages,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Pages',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('Pages Tapped')},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'settings',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('settings Tapped')},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.privacy_tip,
                    color: Colors.blueGrey,
                  ),
                  title: const Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('Privacy Policy Tapped')},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.help,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Help Center',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('Help Center Tapped')},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.book,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'About',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('About Tapped')},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {print('Logout Tapped')},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
