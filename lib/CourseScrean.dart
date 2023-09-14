import 'package:flutter/material.dart';
import 'package:main/widgets/DescriptionSection.dart';
import 'package:main/widgets/VideoSection.dart';

class CourseScrean extends StatefulWidget {
  String img;
  CourseScrean(this.img);

  @override
  State<CourseScrean> createState() => _CourseScreanState();
}

class _CourseScreanState extends State<CourseScrean> {

  bool isVideosSection = true;
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),

        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xFF090E6B),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
             children: [
               Container(
                 padding: const EdgeInsets.all(5),
                 width: MediaQuery.of(context).size.width,
                 height: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: const Color(0xFFF5F3FF),
                   image: DecorationImage(
                     image: AssetImage("images/${widget.img}.png"),
                   ),
                 ),
                 child: Center(
                   child: Container(
                     padding: const EdgeInsets.all(5),
                     decoration: const BoxDecoration(
                       color: Colors.white,
                       shape: BoxShape.circle,
                     ),
                     child: const Icon(
                       Icons.play_arrow_rounded,
                     color: Color(0xFF674AEF),
                       size: 40,
                     ),
                   ),
                 ),
               ),
               const SizedBox(height: 15),
               Text("${widget.img} Complete Course",
               style: const TextStyle(
                 fontSize: 22,
                 fontWeight: FontWeight.w600,

               ),
               ),
               const SizedBox(height: 5),
               Text(
                 "CREATED BY SACHITH PRIYAMANTHA",
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                   color: Colors.black.withOpacity(0.7),
                 ),
               ),
               const SizedBox(height: 5),
               Text(
                 "5 Videos",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                   color: Colors.black.withOpacity(0.5),
                 ),
               ),
               const SizedBox(height: 20),
               Container(
                 padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                 decoration: BoxDecoration(
                   color: const Color(0xFFF5F3FF),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Material(
                       color: isVideosSection ? const Color(0xFF674AEF)
                           : const Color(0xFF674AEF).withOpacity(0.6),
                       borderRadius: BorderRadius.circular(10),
                       child: InkWell(
                         onTap: (){
                           setState(() {
                             isVideosSection = true;
                           });
                         },
                         child: Container(
                           padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                           child: const Text(
                             "videos",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.w500,
                             ),
                           ),
                         ),
                       ),

                     ),
                     Material(
                       color: isVideosSection ? const Color(0xFF090E6B).withOpacity(0.6)
                       : const Color(0xFF674AEF) ,
                       borderRadius: BorderRadius.circular(10),
                       child: InkWell(
                         onTap: (){
                           setState(() {
                             isVideosSection = false;
                           });

                         },
                         child: Container(
                           padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                           child: const Text(
                             "Description",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.w500,
                             ),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               const SizedBox(height: 10),
               isVideosSection ? VideoSection() : DescriptionSection(),
             ],
        ),
      ),
    );
  }
}
