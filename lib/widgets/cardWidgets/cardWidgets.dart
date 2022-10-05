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
        child: Column(
          children: [
            customText.appBarText(data)
          ],
        ),

      ),
    );
  }
}
