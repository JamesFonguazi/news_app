import 'package:flutter/material.dart';
//import '../data/channel_data.dart';
import '../models/channel_model.dart';
import 'channel_card.dart';

class ChannelType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.only(left: 18.0),
            child: ListView.builder(
              itemCount: channels.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var channel = channels[index];
                return Container(
                  margin: EdgeInsets.only(right: 12.0),
                  child: ChannelCard(channels: channel),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
