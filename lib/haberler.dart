



import 'package:belediyeappi/data/Strings.dart';
import 'package:belediyeappi/haber_item.dart';
import 'package:belediyeappi/model/haber.dart';
import 'package:flutter/material.dart';


class haberlerSayfa extends StatelessWidget {

  late List<Haber> tumHaberler;

   haberlerSayfa(){
     tumHaberler = veriKaynaginiHazirla();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Haberler",style: TextStyle(fontSize: 13, fontFamily: 'Righteous')),centerTitle: true,toolbarHeight: 20,),

      body: Center(child: 
      
      ListView.builder(itemBuilder: (context,index){
        return HaberItem(listelenenHaber: tumHaberler[index]);
      },itemCount: tumHaberler.length)
      
      ,),
    );
  }

  List<Haber> veriKaynaginiHazirla() {

  List<Haber> gecici = [];

  for (int i = 0; i < 5; i++) {
    var _haberAdi = Strings.HaberAdlari[i];
    var _haberTarihi = Strings.HaberTarihi[i];
    var _haberDetay = Strings.HaberDetay[i];
    var _haberResim = Strings.HaberBuyukResim[i];
    print(i);
    
    Haber eklenecekHaber = Haber(_haberAdi, _haberTarihi, _haberDetay, _haberResim);
    gecici.add(eklenecekHaber);
    print("eklendi");
  }

    return gecici;
  }
  

}