import 'package:flutter/material.dart';
import 'package:tutorial/models/bottom_nav.dart';
import 'package:tutorial/screens/category_screen.dart';
import 'package:tutorial/screens/home_screen.dart';
import 'package:tutorial/screens/settings_screen.dart';
import 'package:tutorial/screens/web_screen.dart';
import 'package:tutorial/themes/colors.dart';

class LandingScreen extends StatefulWidget {
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var _index = 0;

  Widget get _viewByIndex {
    switch (_index) {
      case 1:
        return CategoryScreen();
      case 2:
        return SettingsScreen();
      case 3:
        return WebScreen();
      default:
        return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navbar Tutorial')),
      body: _viewByIndex,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        backgroundColor: primary,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        selectedItemColor: white,
        unselectedItemColor: white.withOpacity(0.7),
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _index = index),
        items: List.generate(BOTTOM_NAV_ITEMS.length, _itemBar).toList(),

        /*[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text('Home', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              color: Colors.white,
            ),
            title: Text(
              'Category',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.web,
              color: Colors.white,
            ),
            title: Text(
              'Website',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],*/
      ),
    );
  }

  BottomNavigationBarItem _itemBar(int index) {
    var item = BOTTOM_NAV_ITEMS[index];
    return BottomNavigationBarItem(
      icon: Icon(item.icon, color: white),
      label: item.label,
    );
  }
}
