import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucid/slideShowClicked.dart';

class homeState extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return home();
  }

}


class home extends State<homeState>{



  List<String> eventName = ['homecoming','prom','winterformal'];

  List<String> eventDetails = ['detail1','detail2', 'detail3'];

  List<String> eventDateAndLocation = ['8/10 at 5PM in the STEM Building','9/11 at 2PM in the Normal Building', '12/31 at 12AM in the Counserlors Office'];

  List<String> eventPhone = ['9518382999','5627846678', '1226664201'];

  List<String> eventEmail = ['bruh@gmail.com','lolz@hotmail.com', 'trippin@yahoo.com'];

  List<String> eventImages = [
       'https://images.pexels.com/photos/1054289/pexels-photo-1054289.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1933239/pexels-photo-1933239.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];



  //separate arrays


  int x =0;

  List<String> announcementArrayName =[
    'free food',
    'fbla meeting',
    'pay for homecoming'
  ];

  List<String> announcementArrayDetails =[
    'In the quad',
    'In F207',
    'By Jan 3rd'
  ];

  List<String> intermediary =[  // same as arrayName on startup
    'free food',
    'fbla meeting',
    'pay for homecoming'
  ];





  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: ListView(
        children: <Widget>[

          AspectRatio(
            aspectRatio: 7/2,
            child: Container(
                color: Colors.green,
                child: Text('Home',style: TextStyle(fontSize: 50,color: Colors.blueAccent),),
              alignment: Alignment.bottomLeft,
            ),
          ),



          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
                child:
                new CarouselSlider(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 2),

                  items: eventImages.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            padding: EdgeInsets.all(15.0),

                            child: GestureDetector(
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(40.0),
                                child: Image.network(i),
                              ),
                              onTap: (){
                                Navigator.push<Widget>(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => slideShowClicked(url:i, eventEmail: eventEmail[eventImages.indexOf(i)], eventPhone: eventPhone[eventImages.indexOf(i)],eventDateAndLocation: eventDateAndLocation[eventImages.indexOf(i)], eventDetails: eventDetails[eventImages.indexOf(i)],), // TODO: pass event name as well
                                  ),
                                );
                              },

                            )

                        );
                      },
                    );
                  }).toList(),
                )
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Text('Todays Announcements',style: TextStyle(fontSize: 25),),

          ),


          AspectRatio(
              aspectRatio: 2,

              child: todayAnnouncement()

          )





        ],
      ),
    );



  }

  todayAnnouncement() {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(40.0),
          child: Container(
            width: MediaQuery.of(context).size.height/5,
            child: ButtonTheme(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),

              child: new FlatButton(
                child: Center(child:new Text(intermediary[index],textAlign: TextAlign.center,)),

                onPressed: (){

                  if(intermediary[index] == announcementArrayName[index]){
                    //change this index in intermediary to the one in announcementArrayDetails

                    String y = announcementArrayDetails[index];
                    intermediary[index] = y;
                  }else{
                    //change this index in intermediary to the one in announcementArrayName

                    String y = announcementArrayName[index];
                    intermediary[index] = y;

                  }

                  print(intermediary[index]);

                  setState(() {

                  });


                },

              ),


            ),
            color: Colors.blue,
          ),
        ),
        padding: EdgeInsets.all(15),
      );

    },

      itemCount: announcementArrayName.length,
      scrollDirection: Axis.horizontal,




    );


  }





}

