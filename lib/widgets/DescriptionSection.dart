import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("vjkakjv bvjdabjvkjv jvbkvbkf v vjv kv  j beibf v bf nk kn h efbfe jbij beginfnjgifj ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.7),
          ),
            textAlign: TextAlign.justify,
          ),
         SizedBox(height: 10),
          Row(
            children: [
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
          )

        ],
      ),
    );
  }
}