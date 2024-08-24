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
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 5, 2, 179),
        child : Center(

          child : Container(
            width: 200,
            height: 200,

            decoration: BoxDecoration(
              color: Color.fromARGB(255, 136, 201, 255),
              //borderRadius: BorderRadius.circular(20) //all is also same
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
              //use eliptical also instead circular in only
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 10,
                  color: Colors.grey,
                )
              ],
              //shape: BoxShape.circle, //gives error if u use border radius
            ),
          )

        )
      )
         );
      
      
  }
}

