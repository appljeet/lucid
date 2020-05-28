import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clubsClicked.dart';

class clubs extends StatelessWidget{


  List<String> clubsFollowedNames = ['FBLA', 'Key Club', 'Minister club'];

  List<String> clubsFollowedImages = [
    'https://www.fbla-pbl.org/media/Flag-color.png',
    'https://seeklogo.com/images/K/Kiwanis_Key_Club-logo-997005C214-seeklogo.com.png',
    'https://www.sierraclub.org/sites/www.sierraclub.org/files/uploads-wysiwig/SC%20Logo_Vert%20Web%20Green.png'

  ];


  //new section

  List<String> clubsPopularNames = ['FBLA', 'Key Club', 'Minister club'];

  List<String> clubsPopularEmail = ['something@gmail.com', 'hello@hotmail.com', 'testing@gmail.com'];

  List<String> clubsPopularPhone = ['951-426-3939', '911-420-6969', '111-222-3333'];

  List<String> clubsPopularWhatWeDo = ['stuff', 'things', 'more things'];

  List<String> clubsPopularImage = [
    'https://www.fbla-pbl.org/media/Flag-color.png',
    'https://seeklogo.com/images/K/Kiwanis_Key_Club-logo-997005C214-seeklogo.com.png',
    'https://www.sierraclub.org/sites/www.sierraclub.org/files/uploads-wysiwig/SC%20Logo_Vert%20Web%20Green.png'

  ];

  //new section

  List<String> clubsNewestNames = ['FBLA', 'Key Club', 'Minister club'];

  List<String> clubsNewestEmail = ['something@gmail.com', 'hello@hotmail.com', 'testing@gmail.com'];

  List<String> clubsNewestPhone = ['951-426-3939', '911-420-6969', '111-222-3333'];

  List<String> clubsNewestWhatWeDo = ['stuff', 'things', 'more things'];

  List<String> clubsNewestImage = [
    'https://www.fbla-pbl.org/media/Flag-color.png',
    'https://seeklogo.com/images/K/Kiwanis_Key_Club-logo-997005C214-seeklogo.com.png',
    'https://www.sierraclub.org/sites/www.sierraclub.org/files/uploads-wysiwig/SC%20Logo_Vert%20Web%20Green.png'

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
              child: Text('Clubs',style: TextStyle(fontSize: 50,color: Colors.yellowAccent),),
              alignment: Alignment.bottomLeft,
            ),
          ),


          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text('Clubs you Follow',style: TextStyle(fontSize: 20),),

          ),


          AspectRatio(
            aspectRatio: 9/2,
            child: Container(
              color: Colors.red,
              child: clubsFollowed(),
            ),
          ),


          Container(
            padding: EdgeInsets.all(10),
            child: Center(child: Text('Most Popular',style: TextStyle(fontSize: 25),),),
            color: Colors.blue,
            alignment: Alignment.center,

          ),

          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
              color: Colors.red,
              child: clubsPopular(),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Center(child: Text('Newest',style: TextStyle(fontSize: 25),),),
            color: Colors.blue,
            alignment: Alignment.center,

          ),


          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
              color: Colors.red,
              child: clubsNewest(),
            ),
          ),






        ],
      ),
    );

  }









  clubsFollowed() {

    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(30.0),
          child: Container(
            width: MediaQuery.of(context).size.height/8,
            child: ButtonTheme(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),

              child: new FlatButton(
                child: Image.network(clubsFollowedImages[index]),

                onPressed: (){

                }

              ),


            ),
            color: Colors.blue,
          ),
        ),
        padding: EdgeInsets.all(15),
      );

    },

      itemCount: clubsFollowedNames.length,
      scrollDirection: Axis.horizontal,




    );


  }

  clubsPopular() {

    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(40.0),
          child: Container(
            width: MediaQuery.of(context).size.height/3.5,
            child: ButtonTheme(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),

              child: new FlatButton(
                  child: Image.network(clubsPopularImage[index]),

                  onPressed: (){

                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => clubsClicked(clubName: clubsPopularNames[index], clubEmail: clubsPopularEmail[index], clubPhone: clubsPopularPhone[index], clubDescription: clubsPopularWhatWeDo[index],),
                      ),
                    );

                  }

              ),


            ),
            color: Colors.blue,
          ),
        ),
        padding: EdgeInsets.all(15),
      );

    },

      itemCount: clubsPopularNames.length,
      scrollDirection: Axis.horizontal,




    );

  }



  clubsNewest() {

    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(40.0),
          child: Container(
            width: MediaQuery.of(context).size.height/3.5,
            child: ButtonTheme(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),

              child: new FlatButton(
                  child: Image.network(clubsNewestImage[index]),

                  onPressed: (){

                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => clubsClicked(clubName: clubsNewestNames[index], clubEmail: clubsNewestEmail[index], clubPhone: clubsNewestPhone[index], clubDescription: clubsNewestWhatWeDo[index],),
                      ),
                    );

                  }

              ),


            ),
            color: Colors.blue,
          ),
        ),
        padding: EdgeInsets.all(15),
      );

    },

      itemCount: clubsNewestNames.length,
      scrollDirection: Axis.horizontal,




    );

  }


}