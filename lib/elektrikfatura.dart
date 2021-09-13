import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class elektrikfaturawebview extends StatefulWidget {
  const elektrikfaturawebview({ Key? key }) : super(key: key);

  @override
  _elektrikfaturawebviewState createState() => _elektrikfaturawebviewState();
}

class _elektrikfaturawebviewState extends State<elektrikfaturawebview> {
  late WebViewController  _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Elektrik Faturası Ödeme", style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),), centerTitle: true,),

      body: SafeArea(child: 

      WebView(
          initialUrl: 'https://www.faturamatik.com.tr/tr/hizmetlerimiz/fatura-ode',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller){
            _controller = webviewcontroller;
          },

        )
      
      
      
      
      ),
      
    );
  }
}