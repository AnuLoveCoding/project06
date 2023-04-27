import 'package:flutter/material.dart';


import 'Modelclass.dart';

class actress extends StatelessWidget {

  List<Modelclass> actres = [
    Modelclass(name: 'Disha Patni', imagee: '../images/disha.jpg'),
    Modelclass(name: 'Priyanka Chopra', imagee: '../images/priyanka.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actress', style: TextStyle(decoration: TextDecoration.combine([TextDecoration.underline]))),
        centerTitle: true,
      ),

      body: Container(
        child: ListView.builder(
          itemCount: actres.length,
            itemBuilder: (BuildContext context, int pos){
          return Column(
            children: [
              Image(image: AssetImage(actres[pos].imagee),width: 100.0,height: 100.0,),
              Text(actres[pos].name),
              SizedBox(height: 10.0,),
            ],
          );
        }),
      ),
    );
  }
}
