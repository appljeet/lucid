import 'package:flutter/cupertino.dart';



//app icon
class icon extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    AssetImage assetImage = AssetImage('images/icon.png');
    Image icon = Image(image: assetImage);


    return Container(child: icon,);
  }

}