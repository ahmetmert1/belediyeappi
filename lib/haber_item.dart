

import 'package:belediyeappi/haber_detay.dart';
import 'package:belediyeappi/model/haber.dart';
import 'package:flutter/material.dart';

class HaberItem extends StatelessWidget {

  final Haber listelenenHaber;
  const HaberItem({required this.listelenenHaber ,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.document_scanner),
        title: Text(listelenenHaber.haberAdi,  ),
        subtitle: Text(listelenenHaber.haberTarih),
        trailing: Icon(Icons.arrow_forward),

        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HaberDetay(secilenHaber: listelenenHaber)));
        },
      ),
      
    );
  }
}