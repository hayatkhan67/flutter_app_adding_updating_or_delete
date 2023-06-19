// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  FocusNode myFocus = FocusNode();
  bool change=false;
  // ignore: prefer_typing_uninitialized_variables
  var addText;
  TextEditingController myText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Value Delete or Add"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
           change=!change;
            print(change);
            setState(() {
              
            });
          }, icon:const Icon(Icons.add))
        ],
      ),
      // backgroundColor: change!=true?Colors.white:Colors.black,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                  SizedBox(
                    height: 100,width: 200,
                    // color: Colors.amber,
                    child: change!=true?null:TextField(autofocus: true,controller: myText,
                      decoration: (InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),label: const Text("Enter here"))
                    ),
                   onEditingComplete: (){  
                     addText=myText.text;
                      // print(value);
                      print(myText.text);
                      setState(() {
                        
                      });
                    myText.clear();
                    },
                  )
                  ),
                  (Text("Here $addText"))
                 ],
      )
    );
  }
}