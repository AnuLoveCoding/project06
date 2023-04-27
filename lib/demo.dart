import 'package:flutter/material.dart';

class DemoDd extends StatelessWidget {
  const DemoDd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Stack Demo'),),

      body: Container(

        child: Stack(

          children: const [
            Text('hi this is My Image',style: TextStyle(fontSize: 30.0,color: Colors.orange),),
            //Text('hi this is My Image for hello ')
            Positioned(
                child: Text('this is Demo image'),bottom: 10,right: 10)
            ],
        ),

        margin: const EdgeInsets.all(20.0),

        constraints:const BoxConstraints.expand(width: double.infinity,height: 500),

        decoration:  const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            image: DecorationImage(image: AssetImage('../images/win.jpg',),)
        ),


      ),

    );
  }
}