import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget{
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("vjkakjv bvjdabjvkjv jvbkvbkf v vjv kv  j beibf v bf nk kn h efbfe jbij beginfnjgifj ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.7),
          ),
            textAlign: TextAlign.justify,
          ),
         const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                "Rating: ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),

              ),
              Text(
                "Course Length: ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),

              ),


              SizedBox(width: 5),
              Icon(
                Icons.timer,
                color: Color(0xFF674AEF),
              ),
              SizedBox(width: 5),
              Text(
                  "24 hours",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
             ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 5),
              Text(
                "3.2",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),


              ),
            ],
          ),

        ],
      ),
    );
  }
}