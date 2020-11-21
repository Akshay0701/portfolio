import 'package:flutter/material.dart';

import 'ProjectWidget.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height*0.8,
      padding: EdgeInsets.fromLTRB(50.0, 100.0, 60.0,0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('My Projects',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
           ProjectWidget("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.","project1.png","Flutter Dart Firebase","asda"),  
        ],
      ),
    );
  }
}