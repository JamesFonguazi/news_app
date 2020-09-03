import 'package:flutter/material.dart';

class Myprojects extends StatefulWidget {
  @override
  _MyprojectsState createState() => _MyprojectsState();
}

class _MyprojectsState extends State<Myprojects> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      primary: true,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      shrinkWrap: true,
      children: <Widget>[
        _buildcard('online Intership', 'Software', '2018-08-10', '5',
            'assets/maed.png'),
        _buildcard(
            'Maed Coin', 'Blockchain', '2018-08-10', '1', 'assets/maed.png'),
        _buildcard(
            'Job profiling', 'Softwares', '2018-08-10', '4', 'assets/maed.png'),
        _buildcard('Medical Delivery drone', 'Robotics', '2018-08-10', '2',
            'assets/maed.png'),
        _buildcard('Earthquake prediction', 'Machine L.', '2018-08-10', '3',
            'assets/maed.png'),
        _buildcard('Truth information', 'Blockchain', '2018-08-10', '5',
            'assets/maed.png')
      ],
    );
  }

  _buildcard(String projectsname, String type, String date, String rate,
      String imgpath) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 3.0,
          spreadRadius: 3.0,
          color: Colors.white.withOpacity(0.5),
        )
      ]),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100,
                width: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/maed.png'), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  top: 65,
                  left: 120,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          rate,
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 12,
                        )
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            projectsname,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.pink[200]),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    type,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    date,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
