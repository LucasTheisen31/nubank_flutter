import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  const MyDotsApp({Key? key, required this.indiceAtual}) : super(key: key);

  final int indiceAtual;

  Color getColor(int index){
    return index == indiceAtual ? Colors.white : Colors.white38;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
                color: getColor(0), shape: BoxShape.circle),
          ),
          SizedBox(width: 4,),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
                color: getColor(1), shape: BoxShape.circle),
          ),
          SizedBox(width: 4,),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
                color: getColor(2), shape: BoxShape.circle),
          ),
        ],
    );
  }
}
