import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/views/popular_tab_view.dart';
import 'package:news_app/views/recent_tab_view.dart';
import 'package:news_app/views/trending_tab_view.dart';
import 'package:news_app/widgets/channels.dart';
import 'package:news_app/widgets/search_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 3, right: 7, left: 20),
                child: Container(
//                  color: Colors.blueAccent,
                  height: 80,
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 35.0,
                        height: 35.0,
                        decoration: BoxDecoration(
//                    color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(250.0),
                          image: DecorationImage(
                            image: AssetImage("assets/ve.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SearchBar(),
//                      Row(
//                        children: [
//                          SearchBar(),
//                        ],
//                      ),
                    ],
                  ),
                ),
              ),
//              ListTile(
////                title: Text(
////                  "WELCOME",
////                  textAlign: TextAlign.end,
////                  style: kNonActiveTabStyle,
////                ),
////                subtitle: Text(
////                  "Sarah",
////                  textAlign: TextAlign.end,
////                  style: kActiveTabStyle,
////                ),
//                trailing: Container(
//                  width: 35.0,
//                  height: 35.0,
//                  decoration: BoxDecoration(
////                    color: Colors.blueAccent,
//                    borderRadius: BorderRadius.circular(250.0),
//                    image: DecorationImage(
//                      image: AssetImage("assets/ve.jpg"),
//                      fit: BoxFit.cover,
//                    ),
//                  ),
//                ),
//              ),
//              ChannelType(),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.teal,
                  labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                  tabs: [
                    Tab(text: "Popular"),
                    Tab(text: "Trending"),
                    Tab(text: "Recent"),
                    Tab(text: "Channel"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PopularTabView(),
            TrendingTabView(),
            RecentTabView(),
            ChannelType(),
          ],
        ),
      ),
    );
  }
}
