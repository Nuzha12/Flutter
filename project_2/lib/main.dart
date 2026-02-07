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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(){
    print('increment click $_counter');
    _counter++;

    print('increment click $_counter');
    _counter++;
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    _counter = 20;
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _counter = 30;
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: Column(
            children: [

              Container(
                height: 40.0,
                width: 400.0,
                // margin: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text("Welcome to Flutter!"),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 40.0,
                width: 400,
                color: Colors.amber,
                child: Center(
                  child: Text("Hello, Flutter!"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 1, right: 1, bottom: 10),
                child: Container(
                  height: 40.0,
                  child: Row(
                    children: [

                      Expanded(
                        child: Container(
                          color: Colors.red,
                          child: Center(
                            child: Text("Item 1"),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Center(
                            child: Text("Item 2"),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: Center(
                            child: Text("Item 3"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 40.0,
                child: Row(

                  children: [

                    Expanded(
                      child: Container(
                        color: Colors.cyanAccent,
                        width: 40.0,
                        child: Center(
                          child: Text("Data 1"),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.pinkAccent,
                        width: 40.0,
                        child: Center(
                          child: Text("Data 2"),
                        ),
                      ),
                    ),
                  ],

                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 40.0,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.white70,
                child: Center(
                  child: Text("First Widget"),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 40.0,
                // color: Colors.lightGreen,
                decoration: BoxDecoration(
                   color: Colors.white,
                   // borderRadius: BorderRadius.circular(5)
                   borderRadius: BorderRadius.all(Radius.circular(25)),
                   // borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(2))
                   //    borderRadius: BorderRadius.all(Radius.elliptical(5, 3)),
                   //    border: Border.all(color: Colors.black, style: BorderStyle.solid, width: 2),
                      boxShadow: [
                        BoxShadow(color: Colors.black26,
                                  offset: Offset(0, 4),
                                  blurRadius: 5
                        ),
                      ],

                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.white
                      ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter

                      ),


                ),
                child: Center(
                  child: Text("Second Widget Second Widget Second Widget Second Widget Second Widget ", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                    overflow: TextOverflow.ellipsis,
                    letterSpacing: 4,
                    wordSpacing: 5

                  ),),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 40.0,
                color: Colors.yellow,
                child: Center(
                  child: Text("Third Widget", style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.cyanAccent,
                    decorationThickness: 5,
                    decorationStyle: TextDecorationStyle.solid
                  ),),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              MyFirstWidget(),

              SizedBox(
                height: 10,
              ),

              Container(
                child: Center(
                  child: Text('Incrementer  $_counter'),
                ),
              ),

              Spacer(),

              Container(
                height: 40.0,
                child: Center(
                  child: Text("Footer Text"),
                ),
              ),
            ],
          ),
        ),
      ),

          floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
          ),
      ),
    );

  }
}



class MyFirstWidget extends StatelessWidget{
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("My first widget"),
    );

  }
}




