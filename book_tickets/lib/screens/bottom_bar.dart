import 'package:book_tickets/screens/home.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _ButtonBarState();
}

class _ButtonBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onTapSelection(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapSelection,
        currentIndex: _selectedIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: primary,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular)),
          BottomNavigationBarItem(
              label: "Search",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular)),
          BottomNavigationBarItem(
              label: "Ticket",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular)),
          BottomNavigationBarItem(
              label: "Profile",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular))
        ],
      ),
    );
  }
}
