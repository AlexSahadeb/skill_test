import 'package:flutter/material.dart';
import 'package:skill_test/screens/record_screen.dart';
import 'package:skill_test/screens/saved_screen.dart';
import 'package:skill_test/screens/search_screen.dart';
import 'package:skill_test/screens/setting_screen.dart';
import '../screens/home_screen.dart';

class NavigationB extends StatefulWidget {
  const NavigationB({Key? key}) : super(key: key);

  @override
  State<NavigationB> createState() => _NavigationBState();
}

class _NavigationBState extends State<NavigationB> {
  int _onItemTapped = 0;
  List<Widget> screens = <Widget>[
    HomeScreen(),
    const SearchScreen(),
    const Record_Screen(),
    const SavedScreen(),
    const SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_onItemTapped),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),

          color: Colors.white,
          //borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.saved_search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_back),
                label: 'Record',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.save_alt_rounded),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black54,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            currentIndex: _onItemTapped,
            selectedItemColor: const Color(0xED185B51),
            onTap: onItemTapped,
          ),
        ),
      ),
    );
  }

  onItemTapped(int index) {
    setState(() {
      _onItemTapped = index;
    });
  }
}
