import 'package:app_android/perfil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'botao.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}
class _SobreState extends State<Sobre> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFE41F7B),
        title: const  Text('BOTÃO RESGATE'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('SOBRE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text('É um serviço de monitoramento de mulheres em situação de risco de violência doméstica.Em breve o aplicativo estará disponível em todos dispositivos mais usados (Android e IOS)', textAlign: TextAlign.justify, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),)),
                    ],
                  ),
                  Container(height: 25,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('COMO FUNCIONA', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text('Quando acionado o botão será enviado um alerta para central que executa o protocolo para atendimento de pessoas em risco de violência doméstica.Quando selecionado algum nivel entre amarelo, laranja e vermelho, é enviado uma notificação para central onde o protocolo para atendimento de pessoas em risco eminente de violência doméstica. ', textAlign: TextAlign.justify, style: TextStyle(fontSize: 18,),),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap:bottonMenuNavigation,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: '', ),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: '',  ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined ), label: '',),
        ],
      ),
    );
  }



  void bottonMenuNavigation(int index){
    switch(index){
      case 0:{
        Navigator.push(context, MaterialPageRoute(builder: (context) => Botao()));
        break;
      }
      case 1:{
        Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
        break;
      }
      case 2:{
        Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil()));

      }
    }
  }


  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

}