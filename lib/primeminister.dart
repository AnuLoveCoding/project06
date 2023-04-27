import 'package:flutter/material.dart';
import 'package:project06/Modelclass.dart';

class pminister extends StatelessWidget {

   final int p;

   pminister({required this.p});

  List<Modelclass> mini =[

    Modelclass(name: 'Atal bihari vajpee', imagee: '../images/atal.jpg'),
    Modelclass(name: 'Narendar Modi', imagee: '../images/modi.jpg'),
    Modelclass(name: 'Lal Bhadur Shastri', imagee: '../images/lal.jpg'),

  ];


  List<Modelclass> do1 = [

    Modelclass(name: 'Mansukh', imagee: '../images/mansukh.jpg'),
    Modelclass(name: 'Harsh Vardhan', imagee: '../images/vardhan.jpg'),

  ];

  List<Modelclass> actres = [
    Modelclass(name: 'Disha Patni', imagee: '../images/disha.jpg'),
    Modelclass(name: 'Priyanka Chopra', imagee: '../images/priyanka.jpg'),
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

              if(p==0)...[
                Image(image: AssetImage(mini[pos].imagee),
                  width: 100.0,
                  height: 100.0,),
                Text(mini[pos].name, style: TextStyle(
                    decoration: TextDecoration.combine(
                        [TextDecoration.underline])),),
                SizedBox(height: 10.0,),


              ],
              // else if.....
              //else if....

            ],
          );
        }),
      ),
    );

  }
}
