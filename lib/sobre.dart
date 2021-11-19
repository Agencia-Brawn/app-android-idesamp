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
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Sair'),
          ),
        ],
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
                          child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
                    ],
                  ),
                  Container(height: 25,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('PARA QUE SERVE?', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
                    ],
                  ),
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