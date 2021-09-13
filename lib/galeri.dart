import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class galeriSayfa extends StatefulWidget {
  const galeriSayfa({Key? key}) : super(key: key);

  @override
  _galeriSayfaState createState() => _galeriSayfaState();
}

class _galeriSayfaState extends State<galeriSayfa> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List imgList = [
    'https://images.unsplash.com/photo-1570786800163-349b8fccbdae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1593005843438-8aa6309a12ec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
    'https://images.unsplash.com/photo-1574105079640-5b3ebd6fb7a5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1588581020788-ccdf5323325e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1523390388745-31984176c2e5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Galeri',
          style: TextStyle(fontSize: 13, fontFamily: 'Righteous'),
        ),
        centerTitle: true,
        toolbarHeight: 20,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Expanded(
              child: CarouselSlider(
              options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
              
              items: imgList
                  .map((item) => Container(
                    color: Colors.amber[100],
                child: Center(
                    
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                      
                    )),
              ))
                  .toList(),
          ),
            ),
            Container(
              color: Colors.amber[100],
              child: Row(
                
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
          }).toList(),
        ),
            ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
