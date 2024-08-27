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
      home:  CONTAINER(),
    );
  }
}

class CONTAINER extends StatelessWidget{
  //const CONTAINER({Key? key}) : super(key: key);
var uname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title : Text("flutter widgets demo")),

      body:
        Center(child: Container(
          width :300,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    )
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 11,
                    )                 
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                  )
                ),
              ),
              ),

                TextField(
                  controller: uname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    )
                  ),
                  suffixText : "user name ",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye,color: Colors.black,), onPressed: () {  },
                    
                  //preffix icon and text allow // we can place widget also
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                  String name = uname.text.toString();
                  print("uname : $uname");
              },child: Text(
                'login',
              ))
            ],
          )))
        
         );
      
      //pass hidden use obscureText : true; //obstringCharacter : '*' //hintText in decoration 
      //keyboardType : TextInputType.phone  to change keyboard in textField 
      
  }
}

