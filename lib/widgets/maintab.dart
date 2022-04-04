// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore, avoid_print, prefer_const_constructors

import 'package:facebook_ui/pages/friends_page.dart';
import 'package:facebook_ui/pages/home_page.dart';
import 'package:facebook_ui/pages/marketPlace_page.dart';
import 'package:facebook_ui/pages/message_page.dart';
import 'package:facebook_ui/pages/notification_page.dart';
import 'package:facebook_ui/pages/video_page.dart';
import 'package:facebook_ui/widgets/home/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.home_outlined)),
    const Tab(icon: Icon(Icons.people_outlined)),
    const Tab(icon: Icon(Icons.message_outlined)),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -25, end: -5),
        badgeContent: Text(
          "3",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        child: Icon(Icons.notifications_outlined),
      ),
    ),
    const Tab(icon: Icon(Icons.video_library_outlined)),
    const Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on Will Pop");
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(const Duration(milliseconds: 200), () {
      print('Set Index');
      _tabController?.index = 0;
    });
    print('Return');
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text(
            'Facebook',
            style: TextStyle(
              fontSize: 27.0,
              color: Colors.white,
            ),
          ),
          actions: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: IconButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('Search button clicked');
                },
                icon: const Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[400],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
                icon: const Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[400],
              ),
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: topTabs,
          ),
        ),
        endDrawer: SizedBox(
          width: MediaQuery.of(context).size.width * 1.0,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificatioPage(),
            VideoPage(),
            MarketPlacePage(),
          ],
        ),
      ),
    );
  }
}
