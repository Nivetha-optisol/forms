
import 'package:aram_forms/registration.dart';
import 'package:flutter/material.dart';

import 'counselling.dart';
class home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(

        title: Text("ARAM",
        style: TextStyle(
          color: Colors.deepPurple
        ),
        ),


          backgroundColor: Colors.yellow,

        ),  
      body: Column(
        children:<Widget>[
          Container(
          child: Image.asset('images/aramlogo.jpg'),
          ),

           RaisedButton(
             child: Text('COUNSELING',
               style: TextStyle(
                 color: Colors.deepPurple,
               ),
             ),
              color: Colors.yellow,
              onPressed: (){
               Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>counselling()),


               );
              },
          ),
          Divider(
            color: Colors.deepPurple,
            indent:30,
            endIndent: 30,
            height: 40,
            thickness: 1,

          ),
          RaisedButton(
            child: Text('REGISTRATION',
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),


            color: Colors.yellow,
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>registration()),

              );
            },

          ),

    ]
      ),
          
      
      


    );

  }
}
