
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clubsClicked extends StatelessWidget{

  final String clubName;
  final String clubEmail;
  final String clubPhone;
  final String clubDescription;

  clubsClicked({Key key, @required this.clubName, this.clubEmail, this.clubPhone, this.clubDescription}) : super(key: key);



  List<String> clubImages= [
    'https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://www.yankodesign.com/images/design_news/2019/10/popular-products-repackaged-to-invoke-some-humour/Navarro-Designs_01-510x340.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQiXD7U3i3rq-Mk0mD5Zfw8jByoX2zBcOadtzIl187oJ_DFEOYk'

  ];


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
                child: Text(clubName,style: TextStyle(fontSize: 40,color: Colors.blueAccent),),
                alignment: Alignment.center,
              ),
            ),


            AspectRatio(
              aspectRatio: 3/2,
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.red,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(40.0),
                  child: new CarouselSlider(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    pauseAutoPlayOnTouch: Duration(seconds: 2),

                    items: clubImages.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              padding: EdgeInsets.all(15.0),

                              child: GestureDetector(
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(40.0),
                                  child: Image.network(i),
                                ),
                                onTap: (){},

                              )

                          );
                        },
                      );
                    }).toList(),
                  )
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




                new ButtonTheme(

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0)),
                  height: 40,

                  child: RaisedButton(
                    padding: EdgeInsets.only(left: 20,right: 20),
                      child: Text('Follow',style: TextStyle(fontSize: 20),),
                      color: Colors.green,
                      onPressed: (){
                        Navigator.of(context).pop();
                      }
                  ),

                ),



            new Container(
              child: Text('Contact Us',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(top: 30),
              color: Colors.red,
            ),



                new Container(
                  height: 5.0,
                  color: Colors.blue,
                ),


            Container(
              color: Colors.red,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[

                  Container(
                    child: new Text(clubPhone,style: TextStyle(fontSize: 20),),
                    padding: EdgeInsets.all(10),
                  ),

                  Container(
                    child: new Text(clubEmail,style: TextStyle(fontSize: 20)),
                    padding: EdgeInsets.all(10),
                  )


                ],

              ),
            )




              ],


        )
    );


  }





}