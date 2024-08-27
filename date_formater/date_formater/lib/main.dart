import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return MaterialApp(
      home: Scaffold(
        body: 
        Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Time : ${DateFormat('Jms').format(time)}'),
                //time only give whole info insted year we can use any
                //day weekday month are store in int val 
                ElevatedButton(onPressed: (){
                  //refresh page purpose setState function
                  setState(() {

                  });
                }, child: Text('current time'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//intel package and import pakage