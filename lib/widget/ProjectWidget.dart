import 'package:flutter/material.dart';


class ProjectWidget extends StatefulWidget {
  final String imageurl,tech,desc,title;
  ProjectWidget(this.desc,this.imageurl,this.tech,this.title);
  @override
  _ProjectWidgetState createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height*0.8,
      child: Stack(
        children: [
           Positioned(
            right: 40.0,
            child: Image(
              height: 550,
            image: AssetImage("assests/${widget.imageurl}"),
            fit: BoxFit.cover,
          ),
        ),
          Positioned(
            left: 40.0,
            top: 40.0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45.0),),
                  SizedBox(height:50),
                  Positioned(
                      top: 70,
                      left: 150,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.33,
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(widget.desc,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                      )),
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                        ),],
                      color: Color(0xff172943),
                      borderRadius: BorderRadius.all(Radius.circular(10)), 
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.tech,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                  ),
                  SizedBox(height: 20.0,),
                  Image(
                  height: 60,
                  image: AssetImage("assests/github.png"),
                  fit: BoxFit.cover,
                ),
                ],
              ),
            ),
            ),
         
        ],
        ),
    );
  }
}

class ProjectWidget2 extends StatefulWidget {
  final String imageurl,tech,desc,title;
  ProjectWidget2(this.desc,this.imageurl,this.tech,this.title);
  @override
  _ProjectWidget2State createState() => _ProjectWidget2State();
}

class _ProjectWidget2State extends State<ProjectWidget2> {
  @override
  Widget build(BuildContext context) {
   return Container(
      height:MediaQuery.of(context).size.height*0.8,
      child: Stack(
        children: [
           Positioned(
            left: 40.0,
            child: Image(
              height: 550,
            image: AssetImage("assests/${widget.imageurl}"),
            fit: BoxFit.cover,
          ),
        ),
          Positioned(
            right: 40.0,
            top: 40.0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                  Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45.0),),
                  SizedBox(height:50),
                  Positioned(
                      top: 70,
                      right: 150,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.33,
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(widget.desc,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                      )),
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                        ),],
                      color: Color(0xff172943),
                      borderRadius: BorderRadius.all(Radius.circular(10)), 
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.tech,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                  ),
                  SizedBox(height: 20.0,),
                  Image(
                  height: 60,
                  image: AssetImage("assests/github.png"),
                  fit: BoxFit.cover,
                ),
                ],
              ),
            ),
            ),
         
        ],
        ),
    );
  }
}