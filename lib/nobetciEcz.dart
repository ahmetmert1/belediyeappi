import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class nobetciEczaneler extends StatefulWidget {
  const nobetciEczaneler({Key? key}) : super(key: key);

  @override
  _nobetciEczanelerState createState() => _nobetciEczanelerState();
}

class _nobetciEczanelerState extends State<nobetciEczaneler> {

  late WebViewController _controller;

  String url = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nöbetçi Eczaneler',
          style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),
        ),
        centerTitle: true,
        toolbarHeight: 20,
      ),
      
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://www.beo.org.tr/nobetci-eczaneler',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller){
            _controller = webviewcontroller;
          },

        )
         ),
        
      
    );
  }

  
}
