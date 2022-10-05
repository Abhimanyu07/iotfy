import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/data.dart';
import 'package:untitled1/settings.dart';
import 'package:untitled1/widgets/textWidgets/textWidgets.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey[200],
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
  void initState(){
    super.initState();
    gridData.value = dataForTest;
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        title: textWidgets().appBarText('IoT Control')
      ),
      extendBodyBehindAppBar: false,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: ValueListenableBuilder(
            valueListenable: gridData,
            builder: (
                BuildContext context,
                List<Widget> list,
                widget){
            return  GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 5
            ),
            children: gridData.value,
            );
          },),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.pushNamed(context, '/settings'),
        child: const Icon(Icons.settings),
      ),
    );
  }
}
