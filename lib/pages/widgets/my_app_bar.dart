import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  const MyAppBar({Key? key, required this.showMenu, required this.onTap}) : super(key: key);

  final bool showMenu;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //sizedBox do tamanho da barra de notificação
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.20,//mediaQuery tamanho do widget em relçao ao tamanho da tela
            color: Colors.purple[800],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ), //para espaçamento de 10
                    Text(
                      'Lucas Theisen',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less),//se showMenu for == false mostra o icone expand_more, se for tru mostra icone expand_less
              ],
            ),
          ),
        ),
      ],
    );
  }
}
