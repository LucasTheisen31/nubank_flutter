import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_flutter/pages/home_page.dart';
import 'package:nubank_flutter/pages/widgets/splash/splash_page.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,//deixar a bara de status da mesma cor do app, transparente
      systemNavigationBarColor: Colors.purple[800],//cor da barra de navegacao(barra dos botoes do android na parte de baixo da tela)
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Desing Flutter',
      debugShowCheckedModeBanner: false,//oculta a tarja de debug
      theme: ThemeData(//configuraçoes do tema do app
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,//muda tema claro e escuro de acordo com o tema do celular
      ),
      home: SplashPage(),//pagina principal
    );
  }
}

