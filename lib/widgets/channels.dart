import 'package:flutter/material.dart';
//import '../data/channel_data.dart';
import '../models/channel_model.dart';
import 'channel_card.dart';

class ChannelType extends StatelessWidget {
  final List<Channel> _channels = channels;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _channels.length,
        itemBuilder: (BuildContext context, int index) {
          return ChannelCard(
            channelName: _channels[index].channelName,
            imagePath: _channels[index].imagePath,
          );
        },
      ),
    );
  }
}
