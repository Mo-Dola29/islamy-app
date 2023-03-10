import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/mythemedata.dart';
import 'package:islamy/sura_name.dart';
import 'package:islamy/sura_verses.dart';

class SuraDetails extends StatefulWidget {
  static String ROUTE_NAME = 'sura details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines = [];
  String suraContent = '';

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    ReadSuraFile(args.fileName);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/default_bg.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            args.suraName,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: MyThemeData.accentcolor),
          ),
        ),
        body: suraContent.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: MyThemeData.primarycolor,
              ))
            : Container(child: ListView.separated(
          itemCount: suraLines.length,
            itemBuilder: (context,index){
              return SuraVerses(suraLines[index],index);
            },
          separatorBuilder:  (context,index){
            return Divider();
          },
        )),
      ),
    );
  }

  void ReadSuraFile(String fileName) async {
    String fileContent = await rootBundle.loadString('assets/files/$fileName');
    suraContent = fileContent;
    suraContent.trim();
    suraLines = suraContent.split('\n');
    setState(() {});
  }
}
