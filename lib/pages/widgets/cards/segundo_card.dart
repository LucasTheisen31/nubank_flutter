import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SegundoCard extends StatefulWidget {
  const SegundoCard({Key? key}) : super(key: key);

  @override
  State<SegundoCard> createState() => _SegundoCardState();
}

class _SegundoCardState extends State<SegundoCard> with AutomaticKeepAliveClientMixin{
//with AutomaticKeepAliveClientMixin para manter os estados dos widget
  bool _exibirSaldo = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //Um widget que prende seu filho usando um retângulo arredondado.
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Conta",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _exibirSaldo = !_exibirSaldo; //exibir saldo recebe o valor contrario(se for true recebe false)
                            });
                          },
                          child: SvgPicture.asset(
                              !_exibirSaldo ? 'assets/icons/eye-off-outline.svg' : 'assets/icons/eye-outline.svg',//se exibir saldo for false exibe um icone senao exibe o outro
                              color: Colors.grey,
                              semanticsLabel: 'disable_eye'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: double.infinity,
                      //largura tão grande quanto meu pai permitir double.infinity
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Saldo disponivel",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          _exibirSaldo ? Text.rich(
                            TextSpan(
                                text: "R\$ 1,000.000,00"),
                            style: TextStyle(color: Colors.black, fontSize: 28),
                          ) : Container(
                              height: 33,
                              width: 300,
                              color: Colors.grey[300],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //para a row preencher o espaço disponivel
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      //espaçamento entre o icone e o text
                      width: 10,
                    ),
                    Flexible(
                      //Flexible pois o text excedia o tamanho da tela, ou seja pra quebrar o texto
                      child: Text(
                        'Compra mais recente em Binance no valor de R\$ 1.000,000,00 sabado',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
