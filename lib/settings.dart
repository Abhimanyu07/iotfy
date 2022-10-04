import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  _settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: const Center(
        child: Padding(
          padding:  EdgeInsets.all(10),
        ),
      ),
    );
  }
}
