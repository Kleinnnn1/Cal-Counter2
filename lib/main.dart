import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _increment = 0;
  void _incrementText() {
    setState(() {
      _increment++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          title: const Text('Basic App Layout'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.message),)
            ] 
          ),
      ),
      body:  const TabBarView(children: [
        Center(child:  Text('1st Tab')),
        Center(child:  Text('2nd Tab')),
      ]
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementText,
        child: const Icon(Icons.add)),
       bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child:Container(
          padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Counter = $_increment'),
                ],
        )
        
         ),
      ),
    ),
    )
    );
    
  }
}