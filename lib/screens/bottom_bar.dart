import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectIndex = 0;
  static final List<Widget> _widgetsList = <Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ticket App"),
        ),
        body: Center(
          child: _widgetsList[_selectIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTapItem,
          currentIndex: _selectIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.red,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_12_regular),
                activeIcon: Icon(FluentIcons.home_12_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined),
                activeIcon: Icon(Icons.airplane_ticket),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                activeIcon: Icon(Icons.person_2),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
