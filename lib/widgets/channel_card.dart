import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChannelCard extends StatelessWidget {
  final String channelName;
  final String channelId;
  final String imagePath;

  ChannelCard({this.channelId, this.channelName, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 35.0,
              width: 150,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 128, 128, 200.0),
                  border: Border.all(
                    color: Colors.teal,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Text(
//                    "$channelName",
//                    style: TextStyle(
//                        fontWeight: FontWeight.bold, color: Colors.teal),
//                  )
//                ],
//              ),
            ),
            Container(
              height: 50,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(0, 3.0),
                    color: Colors.black38,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(0, 3.0),
                      color: Colors.black38,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$channelName",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
