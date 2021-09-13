

import 'dart:ui';

import 'package:belediyeappi/model/haber.dart';
import 'package:flutter/material.dart';

class HaberDetay extends StatelessWidget {

  final Haber secilenHaber;

  const HaberDetay({required this.secilenHaber,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenHaber.haberAdi,style: TextStyle(color: Colors.white, backgroundColor: Colors.black.withOpacity(0.5)),),
              centerTitle: true,
              background: Image.network(secilenHaber.haberResim, fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(secilenHaber.haberDetay,style: TextStyle(fontSize: 20),),
              ),
            ),
          )
        ],
      ),
      
    );
  }
}