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
        Center(
          child: CircleAvatar(
            child: Text('name',style: TextStyle(color: Colors.white,fontSize: 50),),
              backgroundImage: AssetImage('assets/img/demo.png'),
              backgroundColor: Colors.purple,
              radius: 100,
            // minRadius: 50, //if img size is less than 50 then it take as radius 50 
            //other wise take radious accourding to img we can also use maxRdius

            //we can also use colomn and rows
          ),
        )
         );
      
      
  }
}

