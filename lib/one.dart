import 'package:flutter/material.dart';
import 'package:project06/Actor.dart';
import 'package:project06/Actress.dart';
import 'package:project06/comedian.dart';
import 'package:project06/doctor.dart';
import 'package:project06/primeminister.dart';

class firstpage extends StatelessWidget {

  List<String>prime=["Prime Minister","Doctors"];
  List<String>imagelist=["../images/modi.jpg","../images/vardhan.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
        centerTitle: true,
      ),

      body: Container(
        
        alignment: Alignment.center,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        color: Colors.yellow,

        child: ListView.builder(
            itemCount: prime.length,
            itemBuilder: (BuildContext context, int pos){
          return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return pminister();
                }));

              },

              child: Column(
            children: [
              Image(image: AssetImage(imagelist[pos])),
               Text(prime[pos])

            /*  ListTile(

                leading: Icon(Icons.person,color: Colors.indigoAccent,),
                title: Text(prime[pos]),
               *//* trailing: Icon(Icons.phone,color: Colors.lightBlue,),
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return pminister();
                    }));
                },*//*
              ),*/

            /*  ListTile(
                leading: Icon(Icons.medical_information),
                title: Text('Doctor'),
                trailing:  const Text('Doctor',style: TextStyle(color: Colors.deepOrangeAccent),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return docc();
                  }));
                },
              ),
*/
              // ListTile(
              //   leading: Icon(Icons.theater_comedy),
              //   title: Text('Comedian'),
              //   trailing: Text('GFG',style: TextStyle(color: Colors.orangeAccent),),
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context){
              //       return comedy();
              //     }));
              //   },
              // ),
            ],
            ));
        }),
      ),
    );
  }
}
