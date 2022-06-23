
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenuBotton extends StatelessWidget {
  const ItemMenuBotton({Key? key, required this.icon, required this.text}) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Container(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8.0),
            primary: Colors.white24,
            onPrimary: Colors.white,
            elevation: 0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,//preencher uniformemente
            crossAxisAlignment: CrossAxisAlignment.start,//canto esquerdo
            children: [
              Icon(icon),
              Text(text, style: TextStyle(fontSize: 11),)
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.22,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
