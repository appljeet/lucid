import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class slideShowClicked extends StatelessWidget{



  final String url;
  final String eventEmail;
  final String eventPhone;
  final String eventDateAndLocation;
  final String eventDetails;

  slideShowClicked({Key key, @required this.url, this.eventEmail, this.eventPhone, this.eventDateAndLocation, this.eventDetails}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.black,
      body: new ListView(
        children: <Widget>[


          Row(
            children: <Widget>[
              new ButtonTheme(

                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                height: 40,

                child: RaisedButton(
                    child: Container(
                      child:  Icon(Icons.arrow_back_ios,color: Colors.white,),
                      alignment: Alignment.centerLeft,
                    ),
                    color: Colors.red,
                    onPressed: (){
                      Navigator.of(context).pop();
                    }
                ),

              ),


            ],
          ),


          AspectRatio(
            aspectRatio: 13/2,
            child: Container(
              color: Colors.green,
              child: Text('Event Name',style: TextStyle(fontSize: 40,color: Colors.blueAccent),),
              alignment: Alignment.center,
            ),
          ),


          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(40.0),
                child: Image.network(url),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),


          AspectRatio(
            aspectRatio: 5/2,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(40.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  child: Text('Join us for a quick treat in F207',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
                  color: Colors.blue,
                ),
              ),
            ),
          ),

          Container(
              color: Colors.red,
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(40.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: new Text(' ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  color: Colors.blue,
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),




              IconButton(icon: Icon(Icons.calendar_today,color: Colors.white,), onPressed: () {},),










        ],
      )
    );

  }


}