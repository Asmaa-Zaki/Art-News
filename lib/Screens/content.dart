import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  final String image;
  final String text;
  ContentPage(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image(height: 350, fit: BoxFit.cover, image: AssetImage(image)),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Sunday March 13, 2022"),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    text + "" + text + "" + text,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
