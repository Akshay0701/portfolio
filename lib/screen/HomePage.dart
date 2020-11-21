import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/model/Method.dart';
import 'package:portfolio/widget/AboutPage.dart';
import 'package:portfolio/widget/AppBarTitle.dart';
import 'package:portfolio/widget/FooterPage.dart';
import 'package:portfolio/widget/IntroPage.dart';
import 'package:portfolio/widget/ProjectPage.dart';
import 'package:portfolio/widget/ProjectWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method=new Method();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      body:Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width*1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      width: MediaQuery.of(context).size.width*0.05,
                      height: MediaQuery.of(context).size.width*0.05,
                      image: AssetImage("assests/icon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:38.0),
                    child: AppBarTitle(text: "Home",),
                  ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal:38.0),
                    child: AppBarTitle(text: "About",),
                  ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: AppBarTitle(text: "Experience",),
                  ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: AppBarTitle(text: "Contact",),
                  ),
                  SizedBox(width:40.0),
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: FlatButton(
                      color: Color(0xff48E1EC),
                      onPressed: () { 
                        method.launchURL(
                                    "https://www.linkedin.com/in/akshay-jadhav-90ba81134/");
                       },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          side: BorderSide(color: Color(0xff48E1EC))
                        ),
                      child:Text("Resume",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                    ),
                  ),
                  SizedBox(width:20),
                ]
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*1- MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width*1,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.08,
                    child: Expanded(
                        child: Padding(
                        padding: const EdgeInsets.only(left:0,right: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                method.launchURL(
                                    "https://www.facebook.com/profile.php?id=100013215377464");
                              },
                                child: Image(
                                width: MediaQuery.of(context).size.width*0.03,
                                height: MediaQuery.of(context).size.width*0.03,
                                image: AssetImage("assests/facebook.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height:20.0),
                            GestureDetector(
                               onTap: (){
                                method.launchURL(
                                    "https://github.com/Akshay0701");
                              },
                                child: Image(
                                width: MediaQuery.of(context).size.width*0.03,
                                height: MediaQuery.of(context).size.width*0.03,
                                image: AssetImage("assests/github.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height:20.0),
                            GestureDetector(
                               onTap: (){
                                method.launchURL(
                                    "https://www.hackerrank.com/jadhavakshay0701");
                              },
                                child: Image(
                                width: MediaQuery.of(context).size.width*0.03,
                                height: MediaQuery.of(context).size.width*0.03,
                                image: AssetImage("assests/hackerrank.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height:20.0),
                            GestureDetector(
                               onTap: (){
                                method.launchURL(
                                    "https://www.linkedin.com/in/akshay-jadhav-90ba81134/");
                              },
                                child: Image(
                                width: MediaQuery.of(context).size.width*0.03,
                                height: MediaQuery.of(context).size.width*0.03,
                                image: AssetImage("assests/linkedin.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height:30.0),
                          ],
                          ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              IntroPage(),
                              AboutPage(),
                              Padding(
                                padding:  EdgeInsets.fromLTRB(50.0, 100.0, 60.0,0.0),
                                child: Text('My Projects',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                              ),
                               Padding(
                                 padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                                 child:  ProjectWidget("Food delivery Application Build With Flutter And Firebase (Backend)","project1.png","Flutter Dart Firebase","Foodie"),  
                               ),  
                              
                                 Padding(
                                 padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                                 child:  ProjectWidget2("Social Media Application Builded With Android Studio And Firebase(Backend)","project2.png","Android Studio Java Firebase","PinGo"),  
                               ),  
                                 Padding(
                                 padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                                 child:  ProjectWidget("NetFlix Mobile And Web Ui Clone Builded With Flutter","project3.png","Flutter Dart ","NetFlix UI"),  
                               ),  
                              //  Padding(
                              //    padding:  EdgeInsets.fromLTRB(50.0, 100.0, 50.0,0.0),
                              //    child:  Text('Other Projects',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                              //  ),
                              //  Padding(
                              //    padding:  EdgeInsets.fromLTRB(50.0, 100.0, 50.0,0.0),
                              //    child:  Image(
                              //          width: MediaQuery.of(context).size.width*0.8,
                              //         image: AssetImage("assests/banner.png"),
                              //         fit: BoxFit.cover,
                              //       ),
                              //  ), 
                               FooterPage(),
                            ],
                          ),
                          ),
                    ),
                  ),
                ],
                ),
            ),
          ],
          ),
      ),
    );
  }
}