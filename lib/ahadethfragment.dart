import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/hadeth_details.dart';

import 'mythemedata.dart';

class AhadethFragment extends StatefulWidget {
  const AhadethFragment({Key? key}) : super(key: key);

  @override
  State<AhadethFragment> createState() => _AhadethFragmentState();
}

class _AhadethFragmentState extends State<AhadethFragment> {
  List<Hadeth> ahadethlist = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethlist.isEmpty) {
      readHadethFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        Container(
          width: double.infinity,
          color: MyThemeData.primarycolor,
          height: 2,
        ),
        Container(
            margin: const EdgeInsets.all(8),
            child: const Text(
              'الاحاديث',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            )),
        Container(
          width: double.infinity,
          color: MyThemeData.primarycolor,
          height: 2,
        ),
        Expanded(
          child: ListView.separated(
              itemCount: ahadethlist.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                       child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, HadethDetails.Route_NAME,arguments:ahadethlist[index] );
                    },
                    child: Text(ahadethlist[index].content,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                );
              },
            separatorBuilder: (context, index) {
              return Divider(color: MyThemeData.primarycolor,thickness: 1,indent: 20,endIndent: 20,);
            } ),
        ),
      ],
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    //print(fileContent);
    List<String> ahadeth = fileContent.split('#');
    for (int i = 0; i < ahadeth.length; i++) {
      String singlHadeth = ahadeth[i].trim();
      if(singlHadeth.isEmpty)continue;
      List<String> hadethLines = singlHadeth.split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String content = hadethLines.join();
      Hadeth hadeth = Hadeth(title, content);
      ahadethlist.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.content, this.title);
}
