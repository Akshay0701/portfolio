import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    String str="I Am Akshay Jadhav, Student Developer";
    String str2="Experienced Android Developer with a demonstrated history of working in the computer software industry. Skilled in Loyalty Programs, Mobile Applications, Java, and last my most favourite flutter framework (builded over more then 15 project on it). Strong engineering professional with a High School Diploma focused in Information Technology from Vidyalankar Group of Educational Institutes. ";
    return Container(
      height:MediaQuery.of(context).size.height*0.8,
       padding: EdgeInsets.fromLTRB(50.0, 50.0, 60.0,50.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('About Me',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                SizedBox(height: 20.0,),
                Text(str,style: TextStyle(fontSize: 23.0,color:Colors.white70),),
                SizedBox(height: 25.0,),
                 SizedBox(
                   width: 800,
                   child: Text(str2,style: TextStyle(fontSize: 23.0,color:Colors.white70),)),
                SizedBox(height: 15.0,),
                //  Text(str2,style: TextStyle(fontSize: 25.0,color:Colors.white70),),
                SizedBox(height: 40.0,),
                Text('Skills',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                SizedBox(height: 20.0,),
                Image(
                  height: 90,
                  image: AssetImage("assests/skills.png"),
                  fit: BoxFit.cover,
                ),
             ],
           ),
            Image(
            height: 500,
            image: AssetImage("assests/mypic.png"),
            fit: BoxFit.cover,
          ),
         ],
         ),
    );
  }
}