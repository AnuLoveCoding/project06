import 'package:flutter/material.dart';
import 'package:project06/Modelclass.dart';

class docc extends StatelessWidget {

  List<Modelclass> do1 = [

    Modelclass(name: 'Mansukh', imagee: '../images/mansukh.jpg'),
    Modelclass(name: 'Harsh Vardhan', imagee: '../images/vardhan.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor'),
        centerTitle: true,
      ),

      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        color: Colors.black12,
        child: ListView.builder(
            itemCount: do1.length,
            itemBuilder: (BuildContext context, int pos){
          return Column(
            children: [
                 Image(image: AssetImage(do1[pos].imagee),width: 100.0,height: 100.0,),
                 Text(do1[pos].name, style: TextStyle(decoration: TextDecoration.combine([TextDecoration.underline]),),),
                 SizedBox(height:10.0,),
            ],
          );
        }),
      ),
    );
  }
}
