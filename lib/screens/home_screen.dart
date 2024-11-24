import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image and Assets'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child:
                        Image.network('https://picsum.photos/500/500?random=1'),
                  ),
                  Card(
                    child:
                        Image.network('https://picsum.photos/500/500?random=2'),
                  ),
                  Card(
                    child:
                        Image.network('https://picsum.photos/500/500?random=3'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(child: Image.asset('images/flower.png')),
                  Card(child: Image.asset('images/lamb.jpg')),
                  Card(child: Image.asset('images/quote.jpg')),
                ],
              ),
            ),
            Card(
              color: Colors.blue[400],
              child: const ListTile(
                leading: Icon(Icons.star_border),
                title: Text(
                  'SourGummy 400',
                  style:
                      TextStyle(fontVariations: [FontVariation('wght', 400.0)]),
                ),
              ),
            ),
            Card(
              color: Colors.blue[400],
              child: const ListTile(
                leading: Icon(Icons.star_border),
                title: Text(
                  'SourGummy 600',
                  style:
                      TextStyle(fontVariations: [FontVariation('wght', 600.0)]),
                ),
              ),
            ),
            Card(
              color: Colors.blue[400],
              child: const ListTile(
                leading: Icon(Icons.star_border),
                title: Text(
                  'SourGummy 800',
                  style:
                      TextStyle(fontVariations: [FontVariation('wght', 800.0)]),
                ),
              ),
            ),
            Card(
              color: Colors.blue[400],
              child: const ListTile(
                leading: Icon(Icons.star),
                title: Text(
                  'Roboto',
                  style: TextStyle(fontFamily: 'Roboto'),
                ),
              ),
            ),
          ])),
    );
  }
}
