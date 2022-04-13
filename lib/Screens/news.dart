import '../Data/Data.dart';

import 'content.dart';
import 'package:flutter/material.dart';

class ArtNews extends StatelessWidget {

  Data d1= Data();
  late List<String> images;
  late List<String> texts;

  @override
  Widget build(BuildContext context) {
    images= d1.images;
    texts= d1.texts;

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("News", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder:
          (context)
              {
               return ContentPage(images[index], texts[index]);
              }
          ));
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 3,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 150,
                  margin: const EdgeInsets.fromLTRB(10,10,20,10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(images[index]),
                    ),
                  ),
                ),
                Expanded(child: Text(texts[index]))
              ],
            ),
          ),
        ),
      ),
    )
    );
  }
}
