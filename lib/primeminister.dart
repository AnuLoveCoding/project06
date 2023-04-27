import 'package:flutter/material.dart';
import 'package:project06/Modelclass.dart';

class pminister extends StatelessWidget {

  List<minister> mini =[

    minister(name: 'Atal bihari vajpee', imagee: '../images/atal.jpg'),
    minister(name: 'Narendar Modi', imagee: '../images/modi.jpg'),
    minister(name: 'Lal Bhadur Shastri', imagee: '../images/lal.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prime-Minister',style: TextStyle(decoration: TextDecoration.combine([TextDecoration.underline])),),
        centerTitle: true,
      ),

      body: Container(

        color: Colors.orange,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),

        child: ListView.builder(
            itemCount: mini.length,
            itemBuilder: (BuildContext context, int pos){
          return Column(
            children: [
              Image(image: AssetImage(mini[pos].imagee),width: 100.0,height: 100.0,),
              Text(mini[pos].name,style: TextStyle(decoration: TextDecoration.combine([TextDecoration.underline])),),
              SizedBox(height: 10.0,),
            ],
          );
        }),
      ),
    );

  }
}
