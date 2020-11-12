import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TP-1',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Bar rue de la soif, Rennes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset('img/plage.jpg'),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('CAFE-BAR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                      Text('adresse, rue Rennes')
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.star),
                          onPressed: _incrementCounter,
                          color: Colors.red,
                          splashColor: Colors.lime,
                          iconSize: 45,
                      ),
                      Text( '$_counter', style: TextStyle(fontSize: 24), )
                    ]
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [ Icon(Icons.call, color: Colors.blue), Text('APPELER', style: TextStyle(color: Colors.blue)) ],
                  ),
                  Column(
                    children: [ Icon(Icons.alt_route_outlined, color: Colors.blue), Text('ITINERAIRE', style: TextStyle(color: Colors.blue))  ],
                  ),
                  Column(
                    children: [ Icon(Icons.share, color: Colors.blue), Text('SHARE', style: TextStyle(color: Colors.blue))  ],
                  )
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  'text text text text text text text text text text text text text text text text '),
            )
          ],
        ),
      ),
    );
  }
}
