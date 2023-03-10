import 'package:flutter/material.dart';
import 'package:islamy/mythemedata.dart';

class SebhaFragment extends StatefulWidget {
  @override
  State<SebhaFragment> createState() => _SebhaFragmentState();
}

class _SebhaFragmentState extends State<SebhaFragment> {
  int tasbih = 0;
List<String>sebhaList=['سبحان الله','الله اكبر','الحمد لله','استغفر الله','لاإله إلا الله'];
int index=0;
 double angle=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Stack(
          alignment:Alignment.topCenter,
            children: [
              Image.asset('assets/images/head_sebha_logo.png'),
              InkWell(
                onTap: (){sebha();},
                child: Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.09),
                  child:Transform.rotate(
                      angle: angle,
                      child: Image.asset('assets/images/body_sebha_logo.png')),
                ),
              )
            ]),
        SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:  Color(0xffB7935F)),
          child: Text(
            '$tasbih',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(199, 178, 149, 1.0),
              borderRadius: BorderRadius.circular(8)),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 8),
          child: Column(
            children: [
              MaterialButton(

                 onPressed: () {
                   sebha();
                }
                ,
                color: MyThemeData.primarycolor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: MyThemeData.primarycolor)),
                textColor: MyThemeData.accentcolor,
                child: Text(
                  "${sebhaList[index]}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                 ),

              ),
              MaterialButton(

                onPressed: () {
                  setState(() {
                    tasbih=0;
                    index=0;

                  });
                },
                color: MyThemeData.primarycolor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: MyThemeData.primarycolor)),
                textColor: MyThemeData.accentcolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "إعادة",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        )
      ],
    );
  }
void sebha(){
  tasbih++;
    if(tasbih%33==0){
      index++;
    }
  if(tasbih%165==0){
    index=0;
  }

    setState(() {
      angle+=20;

    });
}

}
