import 'package:flutter/material.dart';
import 'package:islamy/ahadethfragment.dart';
import 'package:islamy/mythemedata.dart';

class HadethDetails extends StatelessWidget {
  static String Route_NAME = 'HadethDetails';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/default_bg.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            hadeth.content,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyThemeData.accentcolor,
                fontSize: 30),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container
            (
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.transparent),
            child: Text(hadeth.title,textAlign: TextAlign.end,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
