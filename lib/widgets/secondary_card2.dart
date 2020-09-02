import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryCard2 extends StatelessWidget {
  final News news;
  SecondaryCard2({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: kGrey3, width: 1.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
//              Container(
//                width: 90.0,
//                height: 135.0,
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(12.0),
//                  image: DecorationImage(
//                    image: AssetImage(news.image),
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: kTitleCard,
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      news.subtitle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: kDetailContent,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          "author",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                letterSpacing: .5,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(":"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          news.author,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.teal,
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "channel name",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                letterSpacing: .5,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(":"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          news.channel,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.teal,
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
//              Expanded(
//                child: Padding(
//                  padding: EdgeInsets.symmetric(vertical: 5.0),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      Text(
//                        news.title,
//                        overflow: TextOverflow.ellipsis,
//                        maxLines: 2,
//                        style: kTitleCard,
//                      ),
//                      SizedBox(height: 4.0),
//                      Text(
//                        news.subtitle,
//                        overflow: TextOverflow.ellipsis,
//                        maxLines: 2,
//                        style: kDetailContent,
//                      ),
//                      Spacer(),
//                    ],
//                  ),
//                ),
//              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.timer,
                      color: Colors.teal,
                      size: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
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
                      color: Colors.teal,
                      size: 20.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
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
                      color: Colors.teal,
                      size: 20.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text("${news.estimate}", style: kDetailContent),
                  SizedBox(
                    width: 10.0,
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.save_alt,
                      color: Colors.teal,
                      size: 20.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  SizedBox(
                    width: 10.0,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.share,
                      color: Colors.teal,
                      size: 20.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
//                  Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
