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
      shrinkWrap: true,
      itemBuilder: (context, index){
        return ListTile(
          leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index == 0 ?
                const Color(0xFF090E6B) :
                const Color(0xFF090E6B).withOpacity(0.6),
                shape: BoxShape.circle,
              ),
            child: const Icon(Icons.play_arrow_rounded,
            color: Colors.white,
              size:30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: const Text("20 min 50sec"),
        );
      },
    );
  }
}