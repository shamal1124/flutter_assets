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

      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
        child : Column(children: [
          Container(
            margin : EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.black,
          ),
          Container(
            margin : EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            margin : EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.grey,
          ),
          Container(
            margin : EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.purple,
          )
        ])
        )
      )
         );
      
      
  }
}

//same for rows 