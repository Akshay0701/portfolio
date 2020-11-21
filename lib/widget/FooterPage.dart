import 'package:flutter/material.dart';
import 'package:portfolio/model/Method.dart';
class FooterPage extends StatefulWidget {
  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    Method method=new Method();
    String str="Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum";
    return Container(
        width: MediaQuery.of(context).size.width*0.8,
       height:MediaQuery.of(context).size.height*0.8,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children:[
          SizedBox(height: 50.0,),
          Text('Whats Next ?',style: TextStyle(color: Color(0xff48E1EC),fontSize: 35.0),),
          SizedBox(height: 30.0,),
          Text('Get In Touch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 85.0),),
          SizedBox(height: 30.0,),
          SizedBox(
            width: 600,
            child: Text(str,style: TextStyle(color: Colors.white54,fontSize: 20.0),textAlign: TextAlign.center,)),
           SizedBox(height: 60.0,),
         SizedBox(
                      height: 65,
                      width: 200,
                      child: FlatButton(
                        color: Color(0xff0A192F),
                        onPressed: () {
                                method.launchURL(
                                    "https://www.linkedin.com/in/akshay-jadhav-90ba81134/");
                         },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: BorderSide(color: Color(0xff48E1EC))
                          ),
                        child:Text("Get In Touch",style:TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 20.0),),
                    ),
           ),
         ],
       ),
    );
  }
}