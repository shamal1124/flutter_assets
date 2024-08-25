import 'package:flutter/material.dart';
import 'package:theme/ui_helper/util.dart';

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
          primarySwatch: Colors.amber,
          useMaterial3: true,

          textTheme: TextTheme(
            headlineSmall: TextStyle(fontSize: 21 , fontWeight: FontWeight.w500),
            headlineMedium: TextStyle(fontSize: 11 , fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
            // use subtitle also
            //headline1 : TextStyle(fontSize: 21 , fontWeight: FontWeight.w500),
            //subtitle1 : TextStyle(fontSize: 11 , fontWeight: FontWeight.bold),
          )
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
        Column(
          children: [
            Text('shamal', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color : Colors.pink),),
            Text('shamal', style: Theme.of(context).textTheme.headlineSmall,),
            Text('shamal', style: Theme.of(context).textTheme.headlineMedium,),
            Text('shamal', style: mTextStyle11(),),
          ],
        ),

         );
      
      
  }
}

