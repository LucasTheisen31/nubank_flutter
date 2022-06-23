import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:nubank_flutter/pages/widgets/botton_menu/bottoon_menu.dart';
import 'package:nubank_flutter/pages/widgets/cards/card_app.dart';
import 'package:nubank_flutter/pages/widgets/menu/item_menu.dart';
import 'package:nubank_flutter/pages/widgets/botton_menu/item_menu_botton.dart';
import 'package:nubank_flutter/pages/widgets/menu/menu_app.dart';
import 'package:nubank_flutter/pages/widgets/my_app_bar.dart';
import 'package:nubank_flutter/pages/widgets/page_view/my_dots_app.dart';
import 'package:nubank_flutter/pages/widgets/page_view/my_dots_app2.dart';
import 'package:nubank_flutter/pages/widgets/page_view/page_view_app.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  bool _showMenu = false;
  int _indiceAtual = 0;
  double _posicaoY = 0;

  @override
  Widget build(BuildContext context) {
    double _alturaTela = MediaQuery.of(context).size.height; //mediaQuery tamanho do widget em relçao ao tamanho da tela, vai pegar o tamanho da tela(heigth = altura)
    if(_posicaoY == 0){
      _posicaoY = _alturaTela * 0.24;
    }
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        children: [
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                _posicaoY = _showMenu ? _alturaTela*0.90 : _alturaTela*0.25;
              });
            },
          ),
          MenuApp(top: _alturaTela * 0.20, showMenu: _showMenu,),
          BottonMenu(posicaoY: _posicaoY, showMenu: _showMenu, ),
          MyDotsApp2(
            indiceAtual: _indiceAtual,
            top: _alturaTela * 0.79, showMenu: _showMenu,
          ),//funcao criada para gerar widget dos dots
          PageViewApp(//classe PageViewApp pasando a posiçao top(onde vai iniciar o topo do widget)
            top: _posicaoY,//se _show menu for false vai deixar a page view na posicao 0.25, senao a page view vai para 0.75
            showMenu: _showMenu,
            onChanged: (index) {
              setState(() {
                _indiceAtual = index;
              });
            },
            onPanUpdate: (details){
              double posicaolimiteTop = _alturaTela*0.25;
              double posicaoLimiteBotton = _alturaTela*0.90;
              double posicaoMeio = (posicaoLimiteBotton - posicaolimiteTop)/2;
              setState(() {
                _posicaoY += details.delta.dy;
                _posicaoY = _posicaoY < posicaolimiteTop ? posicaolimiteTop : _posicaoY;
                _posicaoY = _posicaoY > posicaoLimiteBotton ? posicaoLimiteBotton : _posicaoY;

                if(_posicaoY != posicaoLimiteBotton && details.delta.dy > 0) { //details.delta.dy > 0//se estiver movendo para baixo
                  _posicaoY = _posicaoY > posicaolimiteTop + posicaoMeio - 100
                      ? posicaoLimiteBotton
                      : _posicaoY;
                }
                if(_posicaoY != posicaolimiteTop && details.delta.dy < 0) { //details.delta.dy < 0//se estiver movendo para cima
                  _posicaoY = _posicaoY < posicaoLimiteBotton - posicaoMeio + 80
                      ? posicaolimiteTop
                      : _posicaoY;
                }

                if(_posicaoY == posicaoLimiteBotton){
                  _showMenu = true;
                }else{
                  _showMenu = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
