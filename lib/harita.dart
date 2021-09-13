import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class haritasayfa extends StatefulWidget {
  const haritasayfa({ Key? key }) : super(key: key);

  @override
  _haritasayfaState createState() => _haritasayfaState();
}

class _haritasayfaState extends State<haritasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Harita",style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),),
      centerTitle:  true,
      
      ),

      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              
              

              children: [

                Text("Burası harita sayfası mı"),

              ],




            ),
          )
        )  ),



    );
  }
}