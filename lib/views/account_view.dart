import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';
import 'myprojects.dart';

//class AccountView extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Profile Page',
//      home: MyHomePage(),
//      debugShowCheckedModeBanner: false,
//    );
//  }
//}

class AccountView extends StatefulWidget {
  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF008080),
              ),
              onPressed: () {}),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Color(0xFF008080),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: AssetImage('assets/1.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fonguazi James',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF008080),
                          ),
                        ),
                        Text(
                          'Mega j',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
//                  SizedBox(
//                    height: 5,
//                    child: Container(
//                      color: Colors.white,
//                    ),
//                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
////                      Icon(
////                        Icons.location_on,
////                        size: 17,
////                      ),
//                    ],
//                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
              child: Container(
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF008080),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '112 k',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'followers',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '100',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '1500',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Votes',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Container(
              color: Colors.white,
              child: TabBar(
                controller: tabController,
                labelColor: Color(0xFF008080),
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: kNonActiveTabStyle,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                indicatorColor: Colors.teal,
                labelStyle: kActiveTabStyle.copyWith(fontSize: 21.0),
                tabs: <Widget>[
                  Tab(
                    child: Row(
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.teal,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Post ',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.teal,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Comments ',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(
                          Icons.save_alt,
                          color: Colors.teal,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Saved ',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(
                          Icons.bubble_chart,
                          color: Colors.teal,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Channel ',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.teal,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Settings ',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 450.0,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  new Myprojects(),
                  new Myprojects(),
                  new Myprojects(),
                  new Myprojects(),
                  new Myprojects(),
                ],
              ),
            ),
          ],
        ));
  }
}
