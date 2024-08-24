import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CONTAINER(),
    );
  }
}

class CONTAINER extends StatelessWidget{
  const CONTAINER({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title : Text("flutter widgets demo")),

      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 100,
            color: Colors.red,

          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blue, 
            
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: 50,
              height: 100,
              color: Color.fromARGB(255, 27, 214, 27),
            
            ),
          ),
          Container(
            width: 50,
            height: 100,
            color: Colors.yellow,

          ),
        ],
      )
         );
      
      
      //exapanded widget expand in remaining space. 
      //we can also used in column
  }
}

