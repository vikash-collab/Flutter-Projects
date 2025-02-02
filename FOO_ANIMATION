// Animated Container

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;

  // var bgColor = Colors.blueGrey;

  Decoration myDecor =  BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('FOO ANIMATION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              // color: bgColor,
              curve: Curves.bounceInOut,        // optional for=> speed me variety of chages(interpolation)
              decoration: myDecor,
              duration: Duration(seconds: 3),

            ),
            ElevatedButton(onPressed:(){
              setState((){
                if(flag){
                  _width =  100.0;
                  _height = 200.0;
                  // bgColor = Colors.orange;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange,
                  );
                  flag = false;
                }
                else{
                  _width =  200.0;
                  _height = 100.0;
                  // bgColor =  Colors.pink;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.blueGrey,
                  );
                  flag = true;
                }
              });
            }, child: Text('Animate')),
          ],
        ),
      ),


    );
  }
}
