import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget{

  ListView videoList = [
    'Introduction to Flutter',
    'Installing Flutter on Windows',
  ] as ListView;

  @override
  Widget build(BuildContext context){
    return ListView.builder();
  }
}