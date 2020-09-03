import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'channels.dart';

class PrimaryCard extends StatelessWidget {
  final News news;

  PrimaryCard({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: kGrey3, width: 1.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 5.0,
                backgroundColor: kGrey1,
              ),
              SizedBox(width: 10.0),
              Text(news.category, style: kCategoryTitle)
            ],
          ),
          SizedBox(height: 5.0),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage(news.image),
//                    image: NetworkImage(news.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 210.0,
                  bottom: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              SizedBox(
                                width: 13.0,
                              ),
                              Icon(
                                Icons.move_to_inbox,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            news.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: kTitleCard,
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                news.author,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 3.0),
              Text(":"),
              SizedBox(width: 3.0),
              SizedBox(
                width: 3.0,
              ),
              Text(
                news.channel,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: GoogleFonts.lato(),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Icon(
                  Icons.timer,
                  color: Color(0xFF008080),
                  size: 15.0,
                ),
              ),
              SizedBox(
                width: 3.0,
              ),
//              CircleAvatar(
//                backgroundImage: AssetImage("assets/7.jpg"),
//              ),

              Text(
                news.time,
                style: kDetailContent,
              ),
              SizedBox(width: 10.0),
              Align(
                alignment: Alignment.bottomLeft,
                child: Icon(
                  Icons.comment,
                  color: Color(0xFF008080),
                  size: 15.0,
                ),
              ),
              SizedBox(width: 3.0),
              Text("${news.seen}", style: kDetailContent),

//              CircleAvatar(
//                radius: 5.0,
//                backgroundColor: kGrey1,
//              ),
              SizedBox(
                width: 10.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFF008080),
                  size: 15.0,
                ),
              ),
              SizedBox(width: 3.0),
              Text("${news.estimate}", style: kDetailContent),
            ],
          )
        ],
      ),
    );
  }
}
