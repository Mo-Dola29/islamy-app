import 'package:flutter/material.dart';
import 'package:islamy/hadeth_details.dart';
import 'package:islamy/home.dart';
import 'package:islamy/mythemedata.dart';
import 'package:islamy/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: MyThemeData.primarycolor,
        appBarTheme: AppBarTheme(
          color: MyThemeData.primarycolor
        ),
        textTheme: const TextTheme(
          headline1:TextStyle(color: Colors.white,fontSize: 25)
        )
      ),
     darkTheme: ThemeData(
       textTheme: const TextTheme(
         headline1: TextStyle(
           color: Colors.black,
           fontSize: 25
         )
       )
     ),
     themeMode: ThemeMode.light,
     routes: {
        HomeScreen.route_name:(context)=>HomeScreen(),
       SuraDetails.ROUTE_NAME:(context)=>SuraDetails(),
       HadethDetails.Route_NAME:(context)=>HadethDetails()

     },
      initialRoute: HomeScreen.route_name,
    );
  }
}
