import 'package:flutter/material.dart';

class textWidgets{
  appBarText(String info)=>Text(info,style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24),
  );

  contentText(String info)=>Text(info,
  style: const TextStyle(
    fontSize: 18
  ),);


}