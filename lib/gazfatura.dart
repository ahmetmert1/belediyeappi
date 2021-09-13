import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class gazfaturawebview extends StatefulWidget {
  const gazfaturawebview({ Key? key }) : super(key: key);

  @override
  _gazfaturawebviewState createState() => _gazfaturawebviewState();
}

class _gazfaturawebviewState extends State<gazfaturawebview> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Gaz Faturası Ödeme", style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),), centerTitle: true,),

      body: SafeArea(child: 

      WebView(
          initialUrl: 'https://www.mokafatura.com/bursa-gaz-faturasi-sorgula',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller){
            _controller = webviewcontroller;
          },

        )
      
      
      
      
      ),
      
    );
  }
}