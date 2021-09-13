import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:translator/translator.dart'; 

class anasayfa2 extends StatefulWidget {
  const anasayfa2({ Key? key }) : super(key: key);

  @override
  _anasayfa2State createState() => _anasayfa2State();
}

class _anasayfa2State extends State<anasayfa2> {


  GoogleTranslator translator = GoogleTranslator();

  String out ="";

  void trans()
  {
    
    translator.translate(currently, to: 'tr')   //translating to hi = hindi
      .then((output) 
      {
          setState(() {
           out=output.toString();                          //placing the translated text to the String to be used
          });
          print(out + "AHMET");
      });
  }

  

  

  var temp;
  var description;
  var currently;
  var humidity;
  var windspeed;

  var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=Bursa&lang=tr&appid=c844e819b0d044b7b47b23774c005ad8');


  

  Future getWeather () async{
    http.Response response = await http.get(url);

    var results = jsonDecode(response.body);

    setState(() {
      
      this.temp = results['main']['temp'];
      this.description = results['weather'][0]['description'];
      this.currently = results['weather'][0]['main'];
      this.humidity = results['main']['humidity'];
      this.windspeed = results['wind']['speed'];
    });

    //trans();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getWeather();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Anasayfa',style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),), centerTitle: true,toolbarHeight: 20,),
      body: SafeArea(
              child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: 
              AssetImage("assets/marti.jpg"),
              fit: BoxFit.cover)
            ),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Belediye Logo
                
                Container(

                  
                  width: 130,
                  height: 130,
                  margin: EdgeInsets.only(top: 20 ,bottom: 20),
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber[300],
                  border: Border.all(color: Colors.black , width: 4)
                  
                ),
                child: Image.asset("assets/seagull.png"),
                
                ),

                
                //SATIR
                //https://api.openweathermap.org/data/2.5/weather?q=Bursa&units=imperial&appid=c844e819b0d044b7b47b23774c005ad8
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Opacity(opacity: .7,

                    child: Container(
                      width: 170,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),

                      child: Column(
                        mainAxisAlignment:  MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Text("Martı",style: TextStyle( color: Colors.white , fontSize: 25), ),
                          Text(temp != null ? (temp-273.15).toStringAsFixed(2) +
                          "\u00B0C" : "Yükleniyor",style: TextStyle( color: Colors.white , fontSize: 20), ),
                          Text(description != null ? description.toString().toUpperCase() : "Yükleniyor" ,style: TextStyle( color: Colors.white , fontSize: 15), ),
                        ],
                      ),
                    ),
                    
                    
                    
                    
                    ),
                    Container(
                      child: Opacity(opacity: .7,
                      child: Container(
                        
                        width: 170,
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Icon(Icons.warning,color: Colors.red,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              
                              child: 
                              Text("İlçemiz korona vaka sayılarında artış !",style: TextStyle( color: Colors.white , fontSize: 20), ),
                            ),
                          ],

                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        
                      )),
                    )
                  ],
                ),
                 
                 
                 
                //Hava Durumu     Son eklenen haber


                //Belediye Başkanı
                Container(
                  

                  
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 20 ,bottom: 20),
                  //padding: EdgeInsets.only(top: 150, bottom: 8),
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber[300],
                  border: Border.all(width: 4, color: Colors.black)
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/baskan.jpg"),
                )
                
                ),
              ],
            )
          ),
        ),
      ) ,
    );
  }
}