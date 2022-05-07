import 'package:flutter/material.dart';
import './widgets/index.dart';

const Map _clipType = {
  0: Normal(),
  1: CircleClipper(),
  2: RectangleClipper(),
  3: OvalClipper(),
  4: AvatarClipper(),
  5: TriangleClipper()
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Clipper Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Circle Clipper Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _type = 5;

  void _toggleClipped(int type) {
    setState(() {
      _type = type;
    });
  }
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar( 
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(       
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Hi! I'm Pizza!",
              style: TextStyle(fontSize: 25),
            ),
            Center(
              child: _clipType[_type], 
            ),
            const Text(
              "Select Image Clipping Type",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25)
            ),
            ClipSelector(selectedValue: _type, toggle: _toggleClipped),
          ],
        ),
      ),
    );
  }
}
