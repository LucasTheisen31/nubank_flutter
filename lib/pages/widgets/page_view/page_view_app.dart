import 'package:flutter/cupertino.dart';
import 'package:nubank_flutter/pages/widgets/cards/primeiro_card.dart';
import 'package:nubank_flutter/pages/widgets/cards/segundo_card.dart';
import 'package:nubank_flutter/pages/widgets/cards/terceiro_card.dart';

import '../cards/card_app.dart';

class PageViewApp extends StatefulWidget {
  const PageViewApp({Key? key, required this.top, required this.onChanged, required this.onPanUpdate, required this.showMenu})
      : super(key: key);
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  @override
  State<PageViewApp> createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {

  Tween<double> _tween = Tween<double>(begin: 150, end: 0);


  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: _tween,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutExpo,
      builder: (context, value, child) {
        return AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            curve: Curves.easeOut,
            top: widget.top, //aonde começa o widget a partir do topo
            height: MediaQuery.of(context).size.height * 0.55, //altura do widget em relaçao a altura da tela
            right: value * -1,
            left: value,
            child: GestureDetector(
              onPanUpdate: widget.onPanUpdate,
              child: PageView(
                onPageChanged: widget.onChanged,
                physics: widget.showMenu? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),//permite ou nao navegar entre as page view
                //efeito quando chega no ultimo widget e tenta arrastar para o lado
                children: [
                  CardApp(child: PrimeiroCard()),
                  CardApp(child: SegundoCard()),
                  CardApp(child: TerceiroCard()),
                ],
              ),
            ));
      }
    );
  }
}
