import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraVerses extends StatelessWidget {
  int index;
  String suraVerse;

  SuraVerses(this.suraVerse,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          
          Text('$suraVerse ',textAlign: TextAlign.end,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
          Text('{${index+1}}',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),)
        ],
        
      ),
    );
  }
}
