import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class sufaturawebview extends StatefulWidget {
  const sufaturawebview({ Key? key }) : super(key: key);

  @override
  _sufaturawebviewState createState() => _sufaturawebviewState();
}

class _sufaturawebviewState extends State<sufaturawebview> {

  late WebViewController _controller;  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Su Faturası Ödeme", style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),), centerTitle: true,),
      
      body: SafeArea(child: 

      WebView(
          initialUrl: 'https://su.faturaodemeislemleri.com/su/bursa-su-ve-kanalizasyon-fatura-odeme?gclid=Cj0KCQjw0emHBhC1ARIsAL1QGNeNFzXfjxPrdV5IP6T1ZSr7c3nW_AJMg8P5_Lbblk2BfJPg0yMxT4MaArbcEALw_wcB',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller){
            _controller = webviewcontroller;
          },

        )
      
      
      
      
      ),
    );
  }
}