import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/widgets/cardWidgets/cardWidgets.dart';
ValueNotifier<List<Widget>> gridData= ValueNotifier<List<Widget>>([]);

List<Widget> dataForTest = [
  cardForGrid(data: '1'),
  cardForGrid(data: '2'),
  cardForAddDevice()
];