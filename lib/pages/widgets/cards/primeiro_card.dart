import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeiroCard extends StatelessWidget {
  const PrimeiroCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(//Um widget que prende seu filho usando um retângulo arredondado.
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
            //Um widget que expande um filho de uma Linha , Coluna ou Flex para que o filho preencha o espaço disponível
            flex: 3,
            //quantidade de espaço que o filho pode ocupar no eixo principal é determinada pela divisão do espaço livre
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    //Um widget que expande um filho de uma Linha , Coluna ou Flex para que o filho preencha o espaço disponível
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.credit_card,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Cartão de Crédito",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              )
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
                                  "FATURA ATUAL",
                                  style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text.rich(
                                  TextSpan(text: "R\$ ", children: [
                                    TextSpan(
                                        text: '1.000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: ',00'),
                                  ]),
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 28),
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: 'Limite disponivel',
                                      children: [
                                        TextSpan(
                                            text: ' 2.000,00',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: 7,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.orange,
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.blue,
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.green,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(//Um widget que expande um filho de uma Linha , Coluna ou Flex para que o filho preencha o espaço disponível
            flex: 1, //quantidade de espaço que o filho pode ocupar no eixo principal é determinada pela divisão do espaço livre
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,//para a row preencher o espaço disponivel
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.grey,
                    ),
                    SizedBox(//espaçamento entre o icone e o text
                      width: 5,
                    ),
                    Flexible(//Flexible pois o text excedia o tamanho da tela, ou seja pra quebrar o texto
                      child: Text(
                        'Compra mais recente em Binance no valor de R\$ 400,00 sabado',
                        style: TextStyle(
                          color: Colors.black,
                        ),
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
          ),
        ],
      ),
    );
  }
}
