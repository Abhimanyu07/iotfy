import 'package:flutter/material.dart';
import 'package:untitled1/settings.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey,
        appBarTheme: const AppBarTheme(
          centerTitle: true
        )
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>const MyApp(),
        '/settings': (context)=>const settingPage()
      },
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IoT'),
      ),
      body: Center(
        child: Container(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.pushNamed(context, '/settings'),
        child: const Icon(Icons.settings),
      ),
    );
  }
}
