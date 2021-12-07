import 'package:flutter/material.dart';

class drawer extends StatefulWidget {


  @override
  _drawerState createState() => _drawerState();
}



class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return
       Drawer(


         child: Container(
           color: Colors.grey[900],
           child: ListView(

            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(

                 child:Text(''),
                decoration: BoxDecoration(


                    boxShadow:const [BoxShadow(
                      color: Colors.black,
                      offset: Offset(3.0, 3.0),
                      blurRadius: 9.0,
                      spreadRadius: 1.0,
                    )],

                    image: DecorationImage(
                        image: NetworkImage("https://w0.peakpx.com/wallpaper/314/713/HD-wallpaper-orange-black-digital-art-shapes-pattern-abstract-abstract.jpg"),
                        fit: BoxFit.cover)
                ),

              ),
              ListTile(

                leading: Icon(Icons.message,color: Colors.orange,),
                title: Text('Messages',style: TextStyle(color: Colors.white),),
              ),
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.account_circle,color: Colors.orange),
                title: Text('Profile',style: TextStyle(color: Colors.white)),
              ),
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.orange),
                title: Text('Settings',style: TextStyle(color: Colors.white)),
              ),
              Divider(color: Colors.grey,),
            ],

    ),
         ),
       );

  }
}
