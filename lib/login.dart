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
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(controller: _cpfController, style: TextStyle(fontSize: 16.0, color: Colors.black), decoration: InputDecoration(fillColor: Colors.pink[200], filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                  labelText: 'CPF(Somente Números)', labelStyle: TextStyle(fontWeight: FontWeight.bold)),

                              keyboardType: TextInputType.number,
                              validator: (cpf) {
                                if (cpf == null || cpf.isEmpty) {
                                  return 'Digite o seu CPF';
                                } else if (!RegExp(r'^[0-9]+$')
                                    .hasMatch(_cpfController.text)) {
                                  return 'Digite o CPF correto';
                                }
                                return null;
                              },
                            ),
                            Padding(padding: EdgeInsets.only(top: 17),
                              child: TextFormField(
                                style: TextStyle(fontSize: 16.0, color: Colors.black), decoration: InputDecoration(fillColor: Colors.pink[200],
                                  filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                  labelText: 'Senha', labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
                            Padding(padding: EdgeInsets.only(top: 20, bottom: 13),
                              child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xFF873F8C)),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => Botao(),
                                    ),
                                  );
                                },
                                child: Padding(padding: EdgeInsets.all(20.0),
                                  child: Text('ENTRAR', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),),
                                ),
                              ),
                            ),
                            ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xFF873F8C)),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => Cadastro(),
                                    ),
                                  );
                                },
                                child: Padding(padding: EdgeInsets.all(20.0),
                                  child: Text("CADASTRE-SE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.white),),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
