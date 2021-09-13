import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class telefonfaturawebview extends StatefulWidget {
  const telefonfaturawebview({ Key? key }) : super(key: key);

  @override
  _telefonfaturawebviewState createState() => _telefonfaturawebviewState();
}

class _telefonfaturawebviewState extends State<telefonfaturawebview> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Telefon Faturası Ödeme", style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),), centerTitle: true,),

      body: SafeArea(child: 

      WebView(
          initialUrl: 'https://www.turkcell.com.tr/yardim/yardim-araclari/fatura-borc-sorgulama-ve-odeme',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller){
            _controller = webviewcontroller;
          },

        )
      
      
      
      
      ),
      
    );
  }
}