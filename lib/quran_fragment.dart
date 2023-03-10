import 'package:flutter/material.dart';
import 'package:islamy/mythemedata.dart';
import 'package:islamy/sura_name.dart';

class QuranFragment extends StatelessWidget {
  List<String>SurasName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Image.asset('assets/images/qur2an_screen_logo.png')),
        Container(
          width: double.infinity,
          color: MyThemeData.primarycolor,
          height: 2,
        ),
        const Text('اسم السورة',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
        ,Container(
          width: double.infinity,
          color: MyThemeData.primarycolor,
          height: 2,
        )
        ,Expanded(
          flex:7,
          child: ListView.separated(
            separatorBuilder: (context,index){
              return Divider(color: MyThemeData.primarycolor,thickness: 0.5,);
            },
              itemCount: SurasName.length,
              itemBuilder:(context, index){
            return SuraName(SurasName[index],index);


          }
          )
        )
      ],
    );
  }

}
