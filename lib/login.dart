import 'package:app_android/botao.dart';
import 'package:app_android/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final _cpfController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(color: Color(0xFFFFFFFFFF),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.jpeg'),
                    Form(
                      key: _formkey,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(controller: _cpfController, style: TextStyle(fontSize: 16.0, color: Colors.black),
                            decoration: InputDecoration(fillColor: Color(0xFFFF8BA0), filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                    labelText: 'E-mail', labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            keyboardType: TextInputType.text,
                            validator: (cpf) {
                              if (cpf == null || cpf.isEmpty) {
                                return 'Digite seu email correto';
                              } else if (!RegExp(r'^[0-9]+$')
                                  .hasMatch(_cpfController.text)) {
                                return 'Digite o CPF correto';
                              }
                              return null;
                            },
                          ),
                          Padding(padding: EdgeInsets.only(top: 10),
                            child: TextFormField(style: TextStyle(fontSize: 16.0, color: Colors.white),
                              decoration: InputDecoration(fillColor: Color(
                                  0xFFFF8BA0), filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                labelText: 'Senha', labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                              controller: _passwordController,
                              keyboardType: TextInputType.number,
                              validator: (senha) {
                                print(senha);
                                if (senha == null || senha.isEmpty) {
                                  return 'Digite uma senha';
                                } else if (senha.length < 8 || senha.length > 8) {
                                  return 'Digite uma senha com 8 caracteres';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: RaisedButton(
                              textColor: Colors.white,
                              color: Color(0xFFE41F78),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("ENTRAR", style: TextStyle(fontSize: 20),),
                              ),
                              onPressed: () {Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Botao(),
                                ),
                              );},
                              shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            color: Color(0xFFe41f7b),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("CADASTRE-SE", style: TextStyle(fontSize: 20),),
                            ),
                            onPressed: ()
                              {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Cadastro(),),);
                              },
                            shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(20.0),
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
    );
  }

}
