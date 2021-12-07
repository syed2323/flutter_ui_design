import 'package:flutter/material.dart';



class Screen2 extends StatefulWidget {


  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  bool page_data=  true;
  int page_status=1;

  Container_selector(){
    if(page_status ==1){
      page_data= false;
      return Center(
        child: Text("page number"+ page_status.toString(),
        style: const TextStyle(
          fontSize: 25,
          color:Colors.white,
          fontWeight: FontWeight.bold,

        ),
        ),
      );


    }
    if(page_status ==2){
      page_data= false;
      return Center(
        child: Text("page number............"+ page_status.toString(),
          style: const TextStyle(
            fontSize: 25,
            color:Colors.white,
            fontWeight: FontWeight.bold,

          ),
        ),
      );


    }
    if(page_status == 3){
      page_data= false;
      return Center(
        child: Text("page numberhkjkjhkh"+ page_status.toString(),
          style: const TextStyle(
            fontSize: 25,
            color:Colors.white,
            fontWeight: FontWeight.bold,

          ),
        ),
      );


    }
    else{
      const Text("Select your page");

    }

  }

  @override
  Widget build(BuildContext context) {
    return

      Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Row(children: [
              const Padding(padding: EdgeInsets.only(left: 4)),
              InkWell(
                onTap: (){
                  setState(() {
                    page_data=!page_data;
                    page_status = 1;
                  });
                  },
                child: Container(
                  alignment: Alignment.center,
                  width: 110.0,
                  height: 60.0,

                  decoration: BoxDecoration(
                    color:Colors.black,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow:const [BoxShadow(
                      color: Colors.black,
                      offset: Offset(3.0, 3.0),
                      blurRadius: 9.0,
                      spreadRadius: 1.0,
                    )],


                  ),
                  child: const Text("Page 1",
                  style: TextStyle(

                    fontSize: 24,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              InkWell(
                onTap: (){
                  setState(() {
                    page_data=!page_data;
                    page_status = 2;
                  });
                  },
                child: Container(
                  alignment: Alignment.center,
                  width: 110.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color:Colors.black,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow:const [BoxShadow(
                      color: Colors.black,
                      offset: Offset(3.0, 3.0),
                      blurRadius: 9.0,
                      spreadRadius: 1.0,
                    )],


                  ),
                  child: const Text("Page 2",
                    style: TextStyle(

                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              InkWell(
                onTap: (){
                  setState(() {
                    page_data=!page_data;
                    page_status = 3;

                  });


                },

                child: Container(
                  alignment: Alignment.center,
                  width: 110.0,
                  height: 60.0,

                  decoration: BoxDecoration(
                    color:Colors.black,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow:const [BoxShadow(
                      color: Colors.black,
                      offset: Offset(3.0, 3.0),
                      blurRadius: 9.0,
                      spreadRadius: 1.0,
                    )],


                  ),
                  child: const Text("Page 3",
                    style: TextStyle(

                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
          ),

          Container(
            height: 478,
            width: double.infinity,
            child: Container_selector(),
          )

        ],
      );}
}