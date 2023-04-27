import 'package:flutter/material.dart';
import 'package:project06/Actor.dart';
import 'package:project06/Actress.dart';

class cont extends StatefulWidget {
  const cont({Key? key}) : super(key: key);

  @override
  State<cont> createState() => _contState();
}

class _contState extends State<cont> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return act();
            }));
          },
          child: Container(
            margin: EdgeInsets.only(top: 60,left: 67),
            height: 30,width: 100,
            color: Colors.red,
            child: Center(child: Text("Submit")),
          ),
        ),
        SizedBox(height: 60,),
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return actress();
              }));
            },
            child: Icon(Icons.settings)),
      ],),
    );
  }
}
