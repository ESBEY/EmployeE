import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            new IconButton(icon: new Icon(Icons.schedule_rounded), onPressed:_decrementCounter,color: Colors.red,iconSize: 50,),
           Text(
             'Çalışma Saatlerim',
             style: TextStyle(color: Colors.white,fontFamily: 'Arial',fontSize: 15),
             

           ),
            Text(
                ''
            ),
            Text(
                ''
            ),
            new IconButton(icon: new Icon(Icons.folder_open_rounded), onPressed: _decrementCounter,color:Colors.red,iconSize: 50,),
            Text(
              'Dökümanlarım',
              style: TextStyle(color: Colors.white,fontFamily: 'Arial',fontSize: 15),

            ),
        ]
            )



        ),
      backgroundColor: Colors.white10,
      

      );





  }
}
