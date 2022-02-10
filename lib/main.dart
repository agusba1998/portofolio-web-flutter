import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      theme: ThemeData(
        primarySwatch:Colors.red
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color(0xff6dd5ed),
              Color(0xff2193b0)
            ]
          )
        ),
        height: size.height,
        width: size.width,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: Row(
                    children: [
                       Container(child: Icon(Icons.logo_dev, size: 50,)),
                       SizedBox(width: 20.0,),
                       Expanded(
                        //  width: size.width,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                               child: Row(
                                 children: [
                                   TextButton(
                                      onPressed: (){},
                                      child: Text("Academy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Bold"),),
                                    ),
                                    TextButton(
                                      onPressed: (){},
                                      child: Text("Chellenge", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Bold"),),
                                    ),
                                    TextButton(
                                      onPressed: (){},
                                      child: Text("Developer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Bold"),),
                                    ),
                                    TextButton(
                                      onPressed: (){},
                                      child: Text("Event", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Bold"),),
                                    ),
                                 ],
                               ),
                             ),
                             
                            //  SizedBox(width: size.width/1.5,),
                            OutlinedButton(
                             style: OutlinedButton.styleFrom(
                               side:BorderSide(width: 2, color: Colors.white),
                               textStyle: Theme.of(context).textTheme.button!.copyWith(color: Colors.white)
                             ),
                             onPressed: (){},
                             
                             child: Text("Sigin", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Bold")
                             ),
                             )
                           ],
                         ),
                       )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  width: size.width,
                  color: Colors.red,
                ),
                Container(
                  height: 500,
                  width: size.width,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
