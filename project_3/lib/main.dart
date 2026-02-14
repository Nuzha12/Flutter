import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Buttons',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _counterType = 'NA';
  Color _counterColor = Colors.green;

  void _incrementCounter() {
    print('increment click $_counter');
    _counter++;

    print('increment click $_counter');
    setState(() {
      _counter++;
    });
  }

  void _incrementButtonCounter() {
    _counter++;
    if (_counter % 2 == 0) {
      _counterType = 'Even';
      _counterColor = Colors.pinkAccent;
    } else {
      _counterType = 'Odd';
      _counterColor = Colors.indigoAccent;
    }
    setState(() {});
  }

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
          title: const Text("Flutter Buttons"),
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              GestureDetector(
                onTap: _incrementButtonCounter,
                  child: MyFirstWidget()),

              SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.indigo,
                  padding: const EdgeInsets.all(15),
                ),
                onPressed: () {
                  _counter++;
                  if (_counter % 2 == 0) {
                    _counterType = 'Even';
                  } else {
                    _counterType = 'Odd';
                  }
                  setState(() {});
                },
                child: const Text("Click Me"),
              ),

              SizedBox(height: 20),

              TextButton(
                onPressed: _incrementButtonCounter,
                child: const Text('Text Button'),
              ),

              SizedBox(height: 20),

              OutlinedButton(
                onPressed: _incrementButtonCounter,
                child: const Text('ClickMe Outline'),
              ),

              SizedBox(height: 20),

              MyButton(
                onTap: _incrementButtonCounter,
                onLongPress: _incrementButtonCounter,),

              SizedBox(height: 20),

              IconButton(
                onPressed: _incrementButtonCounter,
                icon: Icon(Icons.favorite, color: _counterType == 'Even' ? Colors.brown: Colors.greenAccent,),
              ),

              SizedBox(height: 20),

              IconButton(
                onPressed: _incrementButtonCounter,
                icon: Icon(Icons.tag_faces, color: _counterColor,),
              ),

              const SizedBox(height: 10),

              Center(
                child: Text('Incrementer  $_counter'),
              ),

              Center(
                child: Text('Incrementer $_counterType'),
              ),

              const Spacer(),

              const SizedBox(
                height: 40.0,
                child: Center(
                  child: Text("Footer Text"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 200,
      color: Colors.yellow,
      child: Center(child: Text('My Widget')),

    );
  }
}


// creating custom button
class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onTap, required this.onLongPress});

  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      onDoubleTap: () => {
        print('on double tap')
      },

      onLongPress: onLongPress,
      child: Container(
        width: 100,
        height: 50,
        color: Colors.red,
        child: Center(child: Text("My Button")),
      
      ),
    );
  }
}

