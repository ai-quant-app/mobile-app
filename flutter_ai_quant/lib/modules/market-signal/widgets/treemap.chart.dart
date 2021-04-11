import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_treemap/treemap.dart';

class TreeMapChart extends StatelessWidget {
  final _source = <SocialMediaUsers>[
    SocialMediaUsers('India', 'Facebook', 25.4),
    SocialMediaUsers('USA', 'Instagram', 19.11),
    SocialMediaUsers('Japan', 'Facebook', 13.3),
    SocialMediaUsers('Germany', 'Instagram', 10.65),
    SocialMediaUsers('France', 'Twitter', 7.54),
    SocialMediaUsers('UK', 'Instagram', 4.93),
  ];

  final _colorMappers = [
    TreemapColorMapper.range(from: 20, to: 30, color: Colors.green),
    TreemapColorMapper.range(from: 10, to: 20, color: Colors.blue),
    TreemapColorMapper.range(from: 0, to: 10, color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfTreemap(
        dataCount: _source.length,
        weightValueMapper: (int index) {
          return _source[index].usersInMillions;
        },
        colorMappers: _colorMappers,
        levels: [
          TreemapLevel(
            groupMapper: (int index) {
              return _source[index].country;
            },
            colorValueMapper: (TreemapTile tile) => tile.weight,
            labelBuilder: (BuildContext context, TreemapTile tile) {
              return Center(
                child: Text(
                  '${tile.group}',
                  style: TextStyle(color: Colors.black),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SocialMediaUsers {
  const SocialMediaUsers(this.country, this.socialMedia, this.usersInMillions);

  final String country;
  final String socialMedia;
  final double usersInMillions;
}
