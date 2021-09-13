import 'package:belediyeappi/elektrikfatura.dart';
import 'package:belediyeappi/gazfatura.dart';
import 'package:belediyeappi/internetfatura.dart';
import 'package:belediyeappi/telefonfatura.dart';
import 'package:flutter/material.dart';
import 'sufatura.dart';

class ebelediyecalismalari extends StatefulWidget {
  const ebelediyecalismalari({ Key? key }) : super(key: key);

  @override
  _ebelediyecalismalariState createState() => _ebelediyecalismalariState();
}

class _ebelediyecalismalariState extends State<ebelediyecalismalari> {

  var ebelediyeList = <Widget>[
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E-Belediye',style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),), centerTitle: true,toolbarHeight: 20,),
      
      body: SafeArea(
              child: ListView(
                children: [ListTile(
      leading: Icon(Icons.opacity),
      title: Text("Su Faturası Öde"),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sufaturawebview()));
      },
    ),
    Divider(),
  
    ListTile(
      leading: Icon(Icons.electrical_services),
      title: Text("Elektrik Faturası Öde"),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>elektrikfaturawebview()));
      },
    ),
    Divider(),

    ListTile(
      leading: Icon(Icons.local_gas_station),
      title: Text("Doğal Gaz Faturası Öde"),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>gazfaturawebview()));
      },
    ),
    Divider(),

    ListTile(
      leading: Icon(Icons.phone_android),
      title: Text("Telefon Faturası Öde"),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>telefonfaturawebview()));
      },
    ),
    Divider(),

    ListTile(
      leading: Icon(Icons.wifi),
      title: Text("İnternet Faturası Öde"),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>internetfaturawebview()));
      },
    ),
    Divider(),],
              )
      ) ,
    );
  }
}

