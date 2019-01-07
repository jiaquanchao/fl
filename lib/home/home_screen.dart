import 'package:flutter/material.dart';

class NavigationIconView {
  final String _title;
  final Widget _icon;
  final Widget _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, String title, Widget icon, Widget activeIcon})
      : _title = title,
        _icon = icon,
        _activeIcon = activeIcon,
        item = BottomNavigationBarItem(
            icon: icon,
            activeIcon: activeIcon,
            title: Text(title),
            backgroundColor: Colors.white);
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<NavigationIconView> navigationViews = <NavigationIconView>[
      NavigationIconView(
        title: '微信',
        icon: const Icon(Icons.access_alarm),
        activeIcon: const Icon(Icons.unarchive),
      ),
      NavigationIconView(
        title: '通讯录',
        icon: const Icon(Icons.cloud_queue),
        activeIcon: const Icon(Icons.access_alarm),
      ),
      NavigationIconView(
        title: '发现',
        icon: const Icon(Icons.favorite_border),
        activeIcon: const Icon(Icons.access_alarm),
      ),
      NavigationIconView(
        title: '我',
        icon: const Icon(Icons.favorite_border),
        activeIcon: const Icon(Icons.access_alarm),
      )
    ];

class _HomeScreenState extends State<HomeScreen> {
  List<NavigationIconView> _navigationViews;

  void initState() {
    super.initState();
    _navigationViews = navigationViews;
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items: _navigationViews.map((view) => view.item).toList(),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) => print('click $index'),
      );
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
      ),
      body: Container(
        color: Colors.red,
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
