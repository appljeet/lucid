import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class officeHours extends StatelessWidget{


  TextEditingController searchController = new TextEditingController();




  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.white,
     body: GestureDetector(
       onTap: (){
         FocusScope.of(context).requestFocus(new FocusNode());
       },
       child: ListView(
         children: <Widget>[



           AspectRatio(
             aspectRatio: 13/2,
             child: Container(
               color: Colors.green,
               child: Text('Office',style: TextStyle(fontSize: 50,color: Colors.yellowAccent),),
               alignment: Alignment.bottomLeft,
             ),
           ),



           AspectRatio(
             aspectRatio: 13/2,
             child:  Row(
               children: <Widget>[

                 Expanded(
                   flex: 2,
                   child: Container(),
                 ),


                 Expanded(
                   flex: 6,
                   child: Container(
                     color: Colors.green,
                     child: Text('Hours',style: TextStyle(fontSize: 50,color: Colors.yellowAccent),),
                     alignment: Alignment.topLeft,
                   ),

                 ),

                 Expanded(
                   flex: 2,
                   child: Container(),
                 )



               ],
             ),

           ),


           AspectRatio(
             aspectRatio:9/2,
             child: Container(
               color: Colors.green,
               child: ClipRRect(
                 borderRadius: new BorderRadius.circular(40.0),
                 child: Container(
                   padding: EdgeInsets.all(15),
                   alignment: Alignment.center,
                   child: Center(
                     child: TextField(
                       controller: searchController,
                       decoration: InputDecoration(
                         hintText: 'Search Office Hours',
                         icon: Icon(Icons.search,color: Colors.grey,),
                         enabledBorder: const OutlineInputBorder(
                           borderSide: const BorderSide(color: Colors.grey, width: 3,),
                         ),
                         border: OutlineInputBorder(borderRadius: const BorderRadius.all(const Radius.circular(20))),
                       ),

                     ),
                   )
                 ),
               ),
             ),

           ),

           AspectRatio(
             aspectRatio: 17/2,
             child: Container(
               color: Colors.red,
               padding: EdgeInsets.only(left: 15),
               alignment: Alignment.centerLeft,
               child: Text('Group By',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
             ),

           ),


           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             children: <Widget>[

               new ButtonTheme(

                 shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                 height: 40,

                 child: RaisedButton(
                     child: Container(
                       child:  Text('Teacher Name'),
                     ),
                     color: Colors.red,
                     onPressed: (){

                     }
                 ),

               ),


               new ButtonTheme(

                 shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                 height: 40,

                 child: RaisedButton(
                     child: Container(
                       child:  Text('Location'),
                     ),
                     color: Colors.red,
                     onPressed: (){

                     }
                 ),

               ),




               new ButtonTheme(

                 shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                 height: 40,

                 child: RaisedButton(
                     child: Container(
                       child:  Text('Category'),
                     ),
                     color: Colors.red,
                     onPressed: (){

                     }
                 ),

               ),

             ],

           ),






           Column(

             children: <Widget>[

               Card(
                 
               )

             ],


           )





         ],


       ),
     )
    );
  }


}