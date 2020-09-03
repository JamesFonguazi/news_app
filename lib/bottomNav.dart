import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/views/account_view.dart';
import 'package:news_app/views/favorite_view.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/views/explore_view.dart';
import 'package:news_app/models/tabIcon_data.dart';
import 'package:flutter/material.dart';
import 'views/bottom_bar_view.dart';
import 'fintness_app_theme.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: FintnessAppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = HomeView();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FintnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            height: 65.0,
            width: 70.0,
//            child: FittedBox(
////              child: FloatingActionButton(
////                  backgroundColor: Color(0xFF008080),
////                  child: Icon(
////                    Icons.mode_edit,
////                  ),
////                  onPressed: () {}),
//                ),
          ),
        ),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Container(
      child: Column(
        children: <Widget>[
          const Expanded(
            child: SizedBox(),
          ),
          BottomBarView(
            tabIconsList: tabIconsList,
            addClick: () {},
            changeIndex: (int index) {
              if (index == 0) {
                animationController.reverse().then<dynamic>((data) {
                  if (!mounted) {
                    return;
                  }
                  setState(() {
                    tabBody = HomeView();
                  });
                });
              } else if (index == 1) {
                animationController.reverse().then<dynamic>((data) {
                  if (!mounted) {
                    return;
                  }
                  setState(() {
                    tabBody = FavoriteView();
                  });
                });
              } else if (index == 2) {
                animationController.reverse().then<dynamic>((data) {
                  if (!mounted) {
                    return;
                  }
                  setState(() {
                    tabBody = SearchView();
                  });
                });
              } else if (index == 3) {
                animationController.reverse().then<dynamic>((data) {
                  if (!mounted) {
                    return;
                  }
                  setState(() {
                    tabBody = AccountView();
                  });
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
