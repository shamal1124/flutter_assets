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
      // ListView(
      //   scrollDirection: Axis.horizontal, ///difault vertical
      //   reverse: true, //default false
      //   children: [
      //     Text('one',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
      //     Text('two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
      //     Text('three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
      //     Text('four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
      //     Text('five',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
      //   ],
      // )


    //   ListView.builder(itemBuilder : (context,index){
    //     return Text(arrname[index],style:TextStyle(fontSize : 21 , fontWeight : FontWeight.w500));
    //   },
    //   itemCount : arrname.length,
    //   itemExtent : 100,
    //   )
    // );


      ListView.separated(itemBuilder : (context,index){
        return Text(arrname[index],style:TextStyle(fontSize : 21 , fontWeight : FontWeight.w500));
      },
      itemCount : arrname.length,
      separatorBuilder: (context,index){
          return Divider(height: 100,thickness: 4,);
      },
      )
    );
  
      
      
  }
}

