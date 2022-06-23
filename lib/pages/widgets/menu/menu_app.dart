import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_menu.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);
  final double top;
  final bool showMenu;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        opacity: showMenu ? 1 : 0, //true aparece, false nao aparece
        duration: Duration(milliseconds: 150),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.69,
          child: SingleChildScrollView(//pra funcionar tem que estar dentro de um container
            physics: BouncingScrollPhysics(),//animaçao de elastico
            child: Column(
              children: [
                Image.asset(
                  'assets/images/qrcode.jpg',
                  height: 120,
                ),
                Text.rich(
                  TextSpan(text: 'Banco ', children: [
                    TextSpan(
                        text: '260 - NuPagamentos S.A',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text.rich(
                  TextSpan(text: 'Agencia ', children: [
                    TextSpan(
                        text: '0001',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text.rich(
                  TextSpan(text: 'Conta ', children: [
                    TextSpan(
                        text: '0000000-0',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      ItemMenu(
                        icon: Icons.info_outline,
                        texto: 'Ajuda',
                      ),
                      ItemMenu(
                        icon: Icons.person_outline,
                        texto: 'Perfil',
                      ),
                      ItemMenu(
                        icon: Icons.settings,
                        texto: 'Configurar Conta',
                      ),
                      ItemMenu(
                        icon: Icons.credit_card,
                        texto: 'Configurar Cartão',
                      ),
                      ItemMenu(
                        icon: Icons.store_mall_directory,
                        texto: 'Pedir conta PJ',
                      ),
                      ItemMenu(
                        icon: Icons.phone_android,
                        texto: 'Configurações do app',
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.7, color: Colors.white54),
                        ),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.purple[800],
                          highlightColor: Colors.transparent,
                          //cor do efeito do clique
                          elevation: 0,
                          disabledElevation: 0,
                          focusElevation: 0,
                          highlightElevation: 0,
                          hoverElevation: 0,
                          splashColor: Colors.purple[900],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sair do app',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
