import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDotsApp2 extends StatelessWidget {
  const MyDotsApp2({Key? key, required this.indiceAtual, required this.top, required this.showMenu, }) : super(key: key);
  
  final int indiceAtual;
  final double top;
  final bool showMenu;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top, //aonde começa o widget a partir do topo
        left: 0,
        right: 0,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 100),
          opacity: showMenu ? 0 : 1,
          child: DotsIndicator(
            dotsCount: 3,
            position: indiceAtual.floorToDouble(),
            decorator: DotsDecorator(
              color: Colors.white38,
              activeColor: Colors.white,
            ),
          ),
        )
    );
  }
}
