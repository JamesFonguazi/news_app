import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/channel_model.dart';

class ChannelCard extends StatelessWidget {
  final Channel channels;

  ChannelCard({this.channels});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
//      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.grey, width: 1.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
//          Expanded(
//            child: Hero(
//              tag: channels.channelName,
//              child:
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage(channels.imagePath),
//                    image: NetworkImage(news.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
//            ),
//          ),
        ],
      ),
//      child: ClipRRect(
//        borderRadius: BorderRadius.circular(10.0),
//        child: Stack(
//          children: <Widget>[
//            Container(
//              height: 35.0,
//              width: 120,
//              decoration: BoxDecoration(
//                  color: Color.fromRGBO(0, 128, 128, 200.0),
//                  border: Border.all(
//                    color: Colors.teal,
//                  ),
//                  borderRadius: BorderRadius.circular(20.0)),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
////                  Text(
////                    channel.channelName,
////                    style: TextStyle(
////                      fontWeight: FontWeight.bold,
////                      color: Colors.teal,
////                    ),
////                  ),
//                  Container(
//                    width: 90.0,
//                    height: 135.0,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(12.0),
//                      image: DecorationImage(
//                        image: AssetImage(channels.imagePath),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
////             Container(
////              height: 60.0,
////              width: 60.0,
////              decoration: BoxDecoration(
////                  color: Colors.teal,
////                  border: Border.all(color: Colors.blue, )
////              ),
////
////            ),
//          ],
//        ),
//      ),
    );
//    return Container(
//      margin: EdgeInsets.only(right: 10.0),
//      child: Card(
////      color: Colors.green,
//        child: Padding(
//          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
//          child: Row(
//            children: <Widget>[
//              Container(
//                height: 50,
//                width: 50.0,
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(60.0),
//                  boxShadow: [
//                    BoxShadow(
//                      blurRadius: 5.0,
//                      offset: Offset(0, 3.0),
//                      color: Colors.black38,
//                    ),
//                  ],
//                  image: DecorationImage(
//                    image: AssetImage(
//                     imagePath,
//                    ),
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
//              SizedBox(width: 5.0,),
//              Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Text("$channelName",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
//                ],
//              ),
//
//            ],
//          ),
//        ),
//
//      ),
//    );
  }
}
