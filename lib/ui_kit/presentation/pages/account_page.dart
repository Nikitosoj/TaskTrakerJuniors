import 'package:elementarytest/ui_kit/presentation/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'home_screens/missions_page.dart';
import 'home_screens/notifications_page.dart';
import 'home_screens/profile_page.dart';
import 'home_screens/progects_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _selectedtab = 0;
  int _index = 0;

  static final List<Widget> _homeBarWidgets = <Widget>[
    ProgectsPage(),
    MissionsPage(),
    NotificationsPage(),
    ChatPage(),
    ProfilePage(),
  ];
  void _selectTab(int value) {
    _selectedtab = value;
    _index = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _homeBarWidgets[_index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(37, 41, 53, 1),
          currentIndex: _selectedtab,
          onTap: _selectTab,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.equalizer), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: ''),
          ]),
    );
  }
}
