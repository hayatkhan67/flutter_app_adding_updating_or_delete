import 'package:flutter/material.dart';

class MyNewHomePage extends StatefulWidget {
  const MyNewHomePage({super.key});

  @override
  State<MyNewHomePage> createState() => _MyNewHomePageState();
}

class _MyNewHomePageState extends State<MyNewHomePage> {
  TextEditingController myText=TextEditingController();

List names=[
  "Hayat",
  "Khan"
];
 var changer=false;
//  var addName;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Data Adding or delete"),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){
          changer=!changer;
          setState(() {
            
          });
        }, icon:const Icon(Icons.add)),
      ],
      ),
      body: Column(
        children: [
            Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 90,width: 150,
                    child: changer==false?null:Center(
                      child: TextFormField(
                        controller: myText,
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),labelText: "Enter Here"),
                      autofocus: true,
                      onEditingComplete: () {
                        names.add(myText.text);
                        setState(() {
                          
                        });
                        myText.clear();
                      },
                      ),
                    ),
                  ),
                SizedBox(
                  height: 30,width: 70,
                  child: changer==false?null:TextButton(onPressed: (){
                      changer=false;
                      setState(() {
                        
                      });
                    }, child:const Text("Close")),
                ),
              ],
            ),
            ),

            
        ...List.generate(names.length, (index) =>  Card(
            color: Colors.orange,
            child: ListTile(
              title:Text(names[index])
            ,
              trailing: SizedBox(
                height: 50,
                width: 100,
                child: Row(
                  children:[
                  IconButton(onPressed: (){
                    if(myText.text==""){
                  changer=!changer;
                    }else{
                      names[index]=myText.text;
                      myText.clear();
                    }
                  setState(() {
                    
                  });
                  },icon:changer==false?const Icon(Icons.edit):const Icon(Icons.check)),
                  IconButton(onPressed: (){
                   names.remove(names[index]); 
                   setState(() {
                     
                   });
                  names[index]=myText.text;

                  },icon:const Icon(Icons.delete),)
                ]),
              ),
            ),
          )
        ),
        ],
      ),
    );
  }
}