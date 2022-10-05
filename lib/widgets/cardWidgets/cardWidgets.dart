import 'package:flutter/material.dart';
import 'package:untitled1/widgets/textWidgets/textWidgets.dart';

class cardForGrid extends StatelessWidget {
  final String data;
  cardForGrid({Key? key,required this.data}) : super(key: key);
  final textWidgets customText  = textWidgets();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 8,
        child: Column(
          children: [
            customText.appBarText(data)
          ],
        ),

      ),
    );
  }
}


class cardForAddDevice extends StatelessWidget {
  const cardForAddDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        insertDevice(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 8,
        child: Column(
          children: [
            textWidgets().appBarText('Add New Device')
            ],
        ),
      ),
    );
  }
}


insertDevice(BuildContext context)async{
  TextEditingController deviceName = TextEditingController();
  TextEditingController devicePin = TextEditingController();
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: textWidgets().appBarText('Insert Device'),
      content:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textWidgets().contentText('Device Name'),
                const SizedBox(width: 10,),
                textWidgets().contentText('Device Pin')
              ],
            ),

            Row(
              children:[
              SizedBox(
                width: 150,
                height: 100,
                child: TextField(
                  maxLength: 12,
                  keyboardType: TextInputType.text,
                  controller: deviceName,
                  decoration:  InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),

              ),
                const SizedBox(width: 20,),
                SizedBox(
                  width: 50,
                  height: 100,
                  child: TextField(
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    controller: devicePin,
                    maxLength: 2,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                    ),
                  ),
                )
          ]
            ),

          ],
        ),

    );
  });
}
