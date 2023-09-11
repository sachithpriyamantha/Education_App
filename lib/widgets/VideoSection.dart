import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget{

  List videoList = [
    'Introduction to Flutter',
    'Installing Flutter on Windows',
    'Creating Our First App',
  ];

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: videoList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        return ListTile(
          leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index == 0 ?
                const Color(0xFF674AEF) :
                const Color(0xFF674AEF).withOpacity(0.6),
              ),
          ),
        );
      },
    );
  }
}