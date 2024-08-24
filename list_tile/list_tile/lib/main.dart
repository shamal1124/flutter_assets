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
    
    var arrname = ["shamal","vishval","jyoti","namrata","kalyani","sakshi","trupti"];
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title : Text("flutter widgets demo")),

      body:

      ListView.separated(itemBuilder : (context,index){
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrname[index]),
          subtitle:Text('number') ,
          trailing:Icon(Icons.add) ,
        );
      },
      itemCount : arrname.length,
      separatorBuilder: (context,index){
          return Divider(height: 100,thickness: 4,);
      },
      )
    );
  
      
      
  }
}

