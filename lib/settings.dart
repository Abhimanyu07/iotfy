import 'package:flutter/material.dart';
import 'package:iotfy/widgets/textWidgets/textWidgets.dart';

class settingPage extends StatefulWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  _settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  final TextEditingController ip_data_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textWidgets().appBarText('Settings'),
      ),
      body:  Center(
        child: Padding(
          padding:  EdgeInsets.all(10),
          child: Column(
            children: [
            SizedBox(width: MediaQuery.of(context).size.width/1.8,
            child: TextField(

              controller: ip_data_controller,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(12)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(width: 1,color: Colors.grey)
                ),
                labelText: 'IP',
                hintText: 'Enter IP of the Device'
              ),
            ),)
            ],
          ),
        ),
      ),
    );
  }
}
