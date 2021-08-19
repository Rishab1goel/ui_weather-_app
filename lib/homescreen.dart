import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var temp;
var description;
var currently;
var humidity;
var windSpeed;

Future getWeather() async{
http.Response response = await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=Delhi&units=imperial&appid=fa72b1ea76727f58b97eea2232da4058"));
var results= jsonDecode(response.body);
setState(() {
  this.temp=results['main']['temp'];
  this.description=results['weather'][0]['description'];
  this.currently=results['weather'][0]['main'];
  this.humidity=results['main']['humidity'];
  this.windSpeed=results['wind']['speed'];
});

}

@override
void initState(){

  super.initState();
  this.getWeather();

}


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
                  child: Text(temp!=null?temp.toString() + '\u00B0': "Loading...",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold  ),),
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 15.0),
                  child: Text(currently!=null?currently.toString():"Loading",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold  ),),
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
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                 FaIcon(FontAwesomeIcons.thermometerHalf),
                 Text('Temperature'),
                 Text(temp!=null?temp.toString() + '\u00B0': "Loading..."),

               ],
            ),
             ),

             Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   FaIcon(FontAwesomeIcons.cloud),
                   Text('Weather'),
                   Text(description!=null?description.toString() + '\u00B0': "Loading..."),
                 ],
               ),
             ),


             Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   FaIcon(FontAwesomeIcons.sun),
                   Text('Humidity'),
                   Text(humidity!=null?humidity.toString(): "Loading..."),
                 ],
               ),
             ),


             Padding(
               padding:  EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   FaIcon(FontAwesomeIcons.wind),
                   Text('WindSpeed'),
                   Text(windSpeed!=null?windSpeed.toString(): "Loading..."),
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



