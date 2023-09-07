import 'package:flutter/material.dart';

class CourseScrean extends StatefulWidget {
  String img;
  CourseScrean(this.img);

  @override
  State<CourseScrean> createState() => _CourseScreanState();
}

class _CourseScreanState extends State<CourseScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img),
      ),
    );
  }
}
