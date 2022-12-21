import 'package:coverflow/coverflow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> images2 = [
    Image.asset('assets/images/1.png',fit: BoxFit.cover),
    Image.asset('assets/images/2.png',fit: BoxFit.cover),
    Image.asset('assets/images/3.png',fit: BoxFit.cover),
    Image.asset('assets/images/4.png',fit: BoxFit.cover),
    Image.asset('assets/images/5.png',fit: BoxFit.cover),
    Image.asset('assets/images/6.png',fit: BoxFit.cover),
    Image.asset('assets/images/7.png',fit: BoxFit.cover),
    Image.asset('assets/images/8.png',fit: BoxFit.cover),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green ,
        title: Text("CoverFlow Slider",style: TextStyle(fontSize: 15),),
        centerTitle: true,
      ),
      body: Center(
        child: CoverFlow(
          images: images2,
          onCenterItemSelected: (index) {
            print('Selected Item\'s index: $index');
          },
          shadowOpacity: 0.3,
          shadowOffset: const Offset(3, 8),
        ),
      ),
    );
  }
}