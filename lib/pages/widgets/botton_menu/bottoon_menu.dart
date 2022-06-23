
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_menu_botton.dart';

class BottonMenu extends StatelessWidget {
  BottonMenu({Key? key, required this.showMenu, required this.posicaoY}) : super(key: key);

  final bool showMenu;
  final double posicaoY;
  Tween<double> _tween = Tween<double>(begin: 150, end: 0);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutExpo,
        builder: (context, value, child) {
        return AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          bottom: showMenu ? 0 + MediaQuery.of(context).padding.bottom - posicaoY: 0,//se show menu for true oculta a barra de boteos em baixo senao exibe ela (+ MediaQuery.of(context).padding.bottom) em baixo nao vai ocupar a parte dos botoes do android
          height: MediaQuery.of(context).size.height * 0.15 ,
          right: value * -1,
          left: value,
          child: IgnorePointer(
            ignoring: showMenu,//se o menu estiver sendo exibido vai ignorar pra poder arastar desde la de baixo
            child: AnimatedOpacity(
              opacity: !showMenu ? 1 : 0,
              duration: Duration(milliseconds: 200),
              child: Container(
                child: ListView(
                  physics: BouncingScrollPhysics(),//Física de rolagem para ambientes que permitem que o deslocamento de rolagem vá além dos limites do conteúdo
                  scrollDirection: Axis.horizontal,
                  children: [
                    ItemMenuBotton(icon: Icons.person_add,text: 'Indicar amigos',),
                    ItemMenuBotton(icon: Icons.phone_android,text: 'Recarga de celular',),
                    ItemMenuBotton(icon: Icons.chat,text: 'Cobrar',),
                    ItemMenuBotton(icon: Icons.monetization_on,text: 'Emprestimos',),
                    ItemMenuBotton(icon: Icons.move_to_inbox,text: 'Depositar',),
                    ItemMenuBotton(icon: Icons.mobile_screen_share,text: 'Trabsferir',),
                    ItemMenuBotton(icon: Icons.format_align_center,text: 'Ajustar limite',),
                    ItemMenuBotton(icon: Icons.chrome_reader_mode,text: 'Pagar',),
                    ItemMenuBotton(icon: Icons.lock_open,text: 'Bloquear cartão',),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
