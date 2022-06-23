import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TerceiroCard extends StatefulWidget {
  const TerceiroCard({Key? key}) : super(key: key);

  @override
  State<TerceiroCard> createState() => _TerceiroCardState();
}

class _TerceiroCardState extends State<TerceiroCard> {
  @override

  bool _botaoPressionado = false;

  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/icons/gift-outline.svg',
              color: Colors.grey, semanticsLabel: 'gift-outline'),
          Column(
            children: [
              Text(
                "Nubank Rewards",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
              ),
              SizedBox(height: 15,),
              Text(
                "Acomule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
                textAlign: TextAlign.center,//alinha o texto no centro
              ),
            ],
          ),
          Container(//botao dentro de um container para poder determinar a altura e a largura do botao
            height: 50,//altura
            width: double.infinity,//largura maxima
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _botaoPressionado = !_botaoPressionado;
                });
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: _botaoPressionado ? Colors.transparent : Colors.purple[800],//se _botaoPressionado = true botao fica transparente senao fica roxo
                onPrimary: _botaoPressionado? Colors.purple[800] : Colors.white,//se _botaoPressionado = true texto fica roxo senao fica branco
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),//forma
                side: BorderSide(color: Colors.purple, width: 0.7),//borda
              ),
              child: Text('ATIVE SEU REWARDS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
