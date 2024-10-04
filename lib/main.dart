import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Common Widgets Demo'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image at the top
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                '../assets/2.jpeg',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            // Row with icons and text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.red),
                    Text('Favorite'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.thumb_up, color: Colors.blue),
                    Text('Like'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.green),
                    Text('Share'),
                  ],
                ),
              ],
            ),

            // Elevated button at the bottom
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                },
                child: Text('Press Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
