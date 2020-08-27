import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/views/account_view.dart';
import 'package:news_app/views/favorite_view.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/views/explore_view.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _bottomNavView = [
    HomeView(),
    SearchView(),
    FavoriteView(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  width: 1000,
                  child: Icon(Icons.home),
//                  color: Colors.black,
                ),
                activeIcon: Container(
                  width: 1000,
                  child: Icon(
                    Icons.home,
                    color: Colors.teal,
                  ),
//                    color: Colors.red,
                ),
                title: new Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    width: 1000,
                    child: Icon(Icons.explore),
//                    color: Colors.red,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    width: 1000,
                    child: Icon(
                      Icons.explore,
                      color: Colors.teal,
                    ),
//                    color: Colors.red,
                  ),
                ),
                title: new Text('Explore'),
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 1000,
                      child: Icon(Icons.move_to_inbox),
//                    color: Colors.red,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 1000,
                      child: Icon(
                        Icons.move_to_inbox,
                        color: Colors.teal,
                      ),
//                    color: Colors.red,
                    ),
                  ),
                  title: Text('Saved')),
              BottomNavigationBarItem(
                  icon: Container(
                    width: 1000,
                    child: Icon(Icons.person),
//                    color: Colors.red,
                  ),
                  activeIcon: Container(
                    width: 1000,
                    child: Icon(
                      Icons.person,
                      color: Colors.teal,
                    ),
//                    color: Colors.red,
                  ),
                  title: Text('Profile')),
            ],
//            _navBarList
//                .map(
//                  (e) => BottomNavigationBarItem(
//                    icon: SvgPicture.asset(
//                      e.icon,
//                      width: 20.0,
//                    ),
//                    activeIcon: SvgPicture.asset(
//                      e.activeIcon,
//                      width: 24.0,
//                    ),
//                    title: Text(e.title),
//                  ),
//                )
//                .toList(),
          )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: Icon(
            Icons.mode_edit,
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class NavBarItem {
  final String icon;
  final String activeIcon;
  final String title;
  NavBarItem({this.icon, this.activeIcon, this.title});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon: "assets/home.svg",
    activeIcon: "assets/home_2.svg",
    title: "Home",
  ),
  NavBarItem(
    icon: "assets/compass (1).svg",
    activeIcon: "assets/compass.svg",
    title: "Search",
  ),
  NavBarItem(
    icon: "assets/favorite.svg",
    activeIcon: "assets/favorite_2.svg",
    title: "Favorite",
  ),
  NavBarItem(
    icon: "assets/account.svg",
    activeIcon: "assets/account_2.svg",
    title: "Account",
  ),
];
