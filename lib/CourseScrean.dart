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
        title: Text(
            widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),

        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xFF674AEF),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
             children: [
               Container(
                 padding: EdgeInsets.all(5),
                 width: MediaQuery.of(context).size.width,
                 height: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Color(0xFFF5F3FF),
                   image: DecorationImage(
                     image: AssetImage("images/${widget.img}.png"),
                   ),
                 ),
                 child: Center(
                   child: Container(
                     padding: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       shape: BoxShape.circle,
                     ),
                     child: Icon(
                       Icons.play_arrow_rounded,
                     color: Color(0xFF674AEF),
                       size: 40,
                     ),
                   ),
                 ),
               ),
               
             ],
        ),
      ),
    );
  }
}
