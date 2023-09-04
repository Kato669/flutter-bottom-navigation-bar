import 'package:flutter/material.dart';

void main() => runApp(
      myApp(),
    );

// ignore: camel_case_types, must_be_immutable
class myApp extends StatefulWidget {
  myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

// ignore: camel_case_types
class _myAppState extends State<myApp> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'facebook',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my App'),
          centerTitle: true,
        ),
        body: ElevatedButton(onPressed: () {

        }, 
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue, 
          backgroundColor: Colors.red,
        ),
        child: const Text('click')),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int colour) {
            setState(() {
              currentIndex = colour;
            });
          },
        ),
      ),
    );
  }
}
