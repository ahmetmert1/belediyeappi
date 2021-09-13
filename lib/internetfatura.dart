import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class internetfaturawebview extends StatefulWidget {
  const internetfaturawebview({ Key? key }) : super(key: key);

  @override
  _internetfaturawebviewState createState() => _internetfaturawebviewState();
}

class _internetfaturawebviewState extends State<internetfaturawebview> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Telefon Faturası Ödeme", style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),), centerTitle: true,),

      body: SafeArea(child: 

      WebView(
          initialUrl: 'https://onlineislemler.turktelekom.com.tr/fatura-sorgulama-odeme/internet',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller){
            _controller = webviewcontroller;
          },

        )
      
      
      
      
      ),
      
    );
  }
}