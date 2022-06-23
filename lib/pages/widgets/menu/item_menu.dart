import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({Key? key, required this.icon, required this.texto})
      : super(key: key);
  final IconData icon;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white54),
          top: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        onPressed: () {},
        color: Colors.purple[800],
        highlightColor: Colors.transparent,//cor do efeito do clique
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: 15,
                ),
                Text(
                  texto,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Icon(Icons.chevron_right, size: 16,)
          ],
        ),
      ),
    );
  }
}
