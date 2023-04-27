import 'package:flutter/material.dart';
import 'package:project06/Modelclass.dart';

class comedy extends StatelessWidget {

  List<comdeyy> comee = [
    comdeyy(name: 'Raju Srivastav', imagee: '../images/raju.jpg'),
    comdeyy(name: 'Kapli Sharma', imagee: '../images/kapil.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comedian'),
        centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: comee.length,
          itemBuilder: (BuildContext context, int pos){
        return Column(
          children: [
            Image(image: AssetImage(comee[pos].imagee),height: 100.0,width: 100.0,),
            Text(comee[pos].name),
            SizedBox(height: 10.0,),
          ],
        );
      }),
    );
  }
}
