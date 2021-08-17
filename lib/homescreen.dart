import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       children: <Widget>[
         Container(
          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(top: 15.0),
                  child: Text('Currently in Delhi',style: TextStyle(color:Colors.white,fontSize: 32,fontWeight: FontWeight.bold  ),),
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 20.0),
                  child: Text('52\u00B0',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold  ),),
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 15.0),
                  child: Text('Rain',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold  ),),
                ),



             ],
           ),
         ),
         SizedBox(height: 50,),

         Column(


           children: [

             Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                   children: [
                 FaIcon(FontAwesomeIcons.thermometerHalf),
                 Padding(
                   padding:  EdgeInsets.only(left: 400),
                   child: Text('Temperature'),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: 400),
                   child: Text('52\u00B0'),
                 ),
               ],
            ),
             ),

             Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   FaIcon(FontAwesomeIcons.cloud),
                   Padding(
                     padding:  EdgeInsets.only(left: 400),
                     child: Text('Weather'),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(left: 400),
                     child: Text('weather'),
                   ),
                 ],
               ),
             ),


             Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   FaIcon(FontAwesomeIcons.sun),
                   Padding(
                     padding:  EdgeInsets.only(left: 400),
                     child: Text('TemperaHumidityture'),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(left: 400),
                     child: Text('12'),
                   ),
                 ],
               ),
             ),


             Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   FaIcon(FontAwesomeIcons.wind),
                   Padding(
                     padding:  EdgeInsets.only(left: 400),
                     child: Text('WindSpeed'),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(left: 400),
                     child: Text('12'),
                   ),
                 ],
               ),
             ),

            


            ],
         ),



       ],
      ),
    );
  }
}
