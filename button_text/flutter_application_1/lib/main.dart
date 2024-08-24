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
        width: 100,
        height: 100,
        //color: Colors.blueGrey,
        
        child: Column(
          children: [

            Text("hii" , 
            style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: 
                    FontWeight.w300,backgroundColor:Colors.purple),),

            TextButton(onPressed: (){print("clicked here textbutton");},onLongPress: ()
            {print("onlong press");}, child: Text("click here ")),

            // ElevatedButton(onPressed: (){print("clicked here eleveted button");},
            //  child: Text("click")) // not work
            
          ],
          )
          ),
         );
      
      
  }
}
//mainAxisAlign : MainAxisAlign.(spaceEvenly,spaceAround,spaceBitween,stretch,end,center,start)//same for all
