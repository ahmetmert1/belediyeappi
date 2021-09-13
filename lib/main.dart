
import 'package:belediyeappi/anasayfa2.dart';
import 'package:belediyeappi/ebelediye.dart';
import 'package:belediyeappi/galeri.dart';
import 'package:belediyeappi/haberler.dart';
import 'package:belediyeappi/harita.dart';
import 'package:belediyeappi/nobetciEcz.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      title: 'Material App',
      home: anasayfa()

      
        
        
        
        
      
    );
  }
}

class anasayfa extends StatefulWidget {

  const anasayfa({ Key? key }) : super(key: key);

  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {

  String url = "";

  void customLaunch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print(' could not launch $url');
    }
  }

  @override

  int _currentIndex = 0;

  final List<Widget> _sayfalar = [
    anasayfa2(),
    galeriSayfa(),
    nobetciEczaneler(),
    ebelediyecalismalari(),
    haberlerSayfa(),
    haritasayfa()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            
            child: Image.asset('assets/seagull.png'),
            backgroundColor: Colors.transparent,
            
          
          ),
        ),
        title: Text('MARTI BELEDİYESİ' ,style: TextStyle(fontFamily: 'Righteous'),),
        centerTitle: true,
        actions: [
          
          IconButton(onPressed: (){
          //Tıklayınca google mapse gidicek
          
          
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> haritasayfa()));


        }, icon: Icon(Icons.map)),
          
          
          
          
          IconButton(onPressed: (){

          url = 'tel:+90 850 305 6675';
          customLaunch(url);
        

        }, icon: Icon(Icons.phone)),
        
        
        
        
        ],
        shadowColor: Colors.transparent,
      ),

      //BODY İNDEXE GÖRE DEĞİŞECEK
      body: _sayfalar[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        showSelectedLabels: false,
        showUnselectedLabels: false,

        //selectedItemColor: Colors.black,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded,color: Colors.black,),
            label: 'Ana Sayfa',
            backgroundColor: Colors.black


          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.airplay, color: Colors.black,),
            label: 'Galeri',
            
            backgroundColor: Colors.black

          ),

          
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy_rounded, color: Colors.black,),
            label: 'Nöbetçi Eczaneler',
            backgroundColor: Colors.black

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded, color: Colors.black,),
            label: 'E-Belediye',
            backgroundColor: Colors.black




          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode_rounded, color: Colors.black,),
            label: 'Haberler',

            backgroundColor: Colors.black

          ),

        
        ],

        onTap: (index){

          setState(() {
            _currentIndex = index;
          });

        },
      ),

    );
  }
}

