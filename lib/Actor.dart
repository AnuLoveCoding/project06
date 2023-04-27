import 'package:flutter/material.dart';
import 'package:project06/Modelclass.dart';

class act extends StatelessWidget {


  List<actor> person = [

    actor(name: 'Akshay Kumar', imagee: '../images/akshay.jpg'),
    actor(name: 'SalmanKhan', imagee: '../images/salman.jpg'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actor', style: TextStyle(decoration: TextDecoration.combine([TextDecoration.underline],),),),
        centerTitle: true,
      ),

      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        color: Colors.cyanAccent,

        child: ListView.builder(
            itemCount: person.length,
            itemBuilder: (BuildContext context, int pos){

          return Column(

            children: [
              Image(image:  AssetImage(person[pos].imagee),width: 100.0, height: 100.0,),
              Text(person[pos].name),
              SizedBox(height: 10.0,),
            ],
          );
        }),
      ),
    );
  }
}
