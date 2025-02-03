//AnimatedOpacity
  
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
  var myOpacity = 1.0;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Animated Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 2), curve: Curves.slowMiddle,
               child: Container(
                  width: 200,
                  height: 300,
                  color: Colors.orange,
               ),
            ),
            ElevatedButton(onPressed:(){
              setState((){
                if(flag){
                  myOpacity = 0.0;
                  flag = false;
                }else{
                  myOpacity = 1.0;
                  flag = true;
                }
              });
            }, child: Text('Close')),
          ],
        ),
      ),
    );
  }
}
