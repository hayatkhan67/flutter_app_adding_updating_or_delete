import 'package:flutter/material.dart';
// import 'package:updating_or_delete/practice.dart';
//  import 'home_page.dart';
import 'my_home_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hayat App",
      theme:ThemeData(
        primarySwatch: Colors.purple
      ),
      // home:const MyHomePage(),
      home:const MyNewHomePage(),
    //  home:const Practice(),
    );
  }
}                                         