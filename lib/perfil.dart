import 'package:app_android/sobre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'botao.dart';
import 'login.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}
class _PerfilState extends State<Perfil> {
  bool checkTermo = true;
  final _formcadastro = GlobalKey<FormState>();
  final _nomecompleto = TextEditingController();
  final _nomesocial = TextEditingController();
  final _endereco = TextEditingController();
  final _telefone = TextEditingController();
  final _email = TextEditingController();
  bool ckteste = false;
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFE41F7B),
        title: const  Text('BOTÃO RESGATE'),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: ()
            {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login(),),);
            },
            child: const Text('Sair', style: TextStyle(color: Colors.white),),
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
                      Text('MEUS DADOS', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(height: 25,),
                  Form(
                    key: _formcadastro,
                    child: Column(
                      children: [
                        // NOME COMPLETO
                        Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextFormField(
                            readOnly: true,
                            controller: _nomecompleto,
                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Nome Completo',
                              fillColor: Color(0xFFA05A6),
                              filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            autofocus: false,
                          ),
                        ),

                        // NOME SOCIAL
                        Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextFormField(
                            readOnly: true,
                            controller: _nomesocial,
                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Nome Social (Opcional)',
                              fillColor: Color(0xFFA05A6),
                              filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              labelStyle: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            autofocus: false,
                          ),
                        ),

                        // TELEFONE
                        Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextFormField(
                            readOnly: true,
                            controller: _telefone,
                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Color(0xFFA05A6),
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              hintText: 'Telefone',
                              labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            autofocus: false,
                          ),
                        ),

                        // E-MAIL
                        Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextFormField(
                            readOnly: true,
                            controller: _email,
                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                            decoration: InputDecoration(fillColor: Color(0xFFA05A6),
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              hintText: 'E-mail',
                              labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            autofocus: false,
                          ),
                        ),

                        // ENDEREÇO
                        Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: TextFormField(
                            readOnly: true,
                            controller: _endereco,
                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                            decoration: InputDecoration(fillColor: Color(0xFFA05A6),
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              hintText: 'Endereço Completo',
                              labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            autofocus: false,

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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