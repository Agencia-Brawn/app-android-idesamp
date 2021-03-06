import 'package:app_android/botao.dart';
import 'package:app_android/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cadastro extends StatefulWidget {
  @override
  _Cadastrotate createState() => _Cadastrotate();
}
class _Cadastrotate extends State<Cadastro> {
  bool checkTermo = true;
  final _formcadastro = GlobalKey<FormState>();
  final _nomecompleto = TextEditingController();
  final _nomesocial = TextEditingController();
  final _endereco = TextEditingController();
  final _telefone = TextEditingController();
  final _email = TextEditingController();
  bool ckteste = false;

  enviar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:  Text('CADASTRO EFETUADO', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),),
    );
  }


  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Color(0xFFE41F7B),
      title: const  Text('CADASTRO'),
      leading: IconButton (
        icon: Icon(Icons.keyboard_arrow_left_rounded),
        onPressed: ()
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login(),),);
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            // handle the press
          },
        ),
      ],
    ),

    body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formcadastro,
            child: Column(
              children: [
                // NOME COMPLETO
                Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: _nomecompleto,
                    validator: (value) {
                      if (value!.length < 5) {
                        return "Insira seu nome completo";
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(fontSize: 16.0, color: Colors.black), decoration: InputDecoration(fillColor: Color(0xFFFF8BA0),
                      filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Nome Completo',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.text,
                    autofocus: false,

                  ),
                ),

                // NOME SOCIAL
                Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: _nomesocial,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(fillColor: Color(0xFFFF8BA0),
                      filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Nome Social (Opcional)',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.text,
                    autofocus: false,

                  ),
                ),

                // TELEFONE
                Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: _telefone,
                    validator: (value) {
                      if (value!.length < 8) {
                        return "Insira seu telefone completo";
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(fillColor: Color(0xFFFF8BA0),
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .circular(10.0)),
                      labelText: 'Telefone (WhatsApp)',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    autofocus: false,
                  ),
                ),

                // E-MAIL
                Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: _email,
                    validator: (value) {
                      if (value!.length < 5) {
                        return "E-mail muito curto";
                      } else if (!value.contains("@")) {
                        return "Isso n??o ?? um e-mail";
                      }
                      return null;
                    },
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(fillColor: Color(0xFFFF8BA0),
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .circular(10.0)),
                      labelText: 'E-mail',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    autofocus: false,
                  ),
                ),

                // ENDERE??O
                Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: _endereco,
                    validator: (value) {
                      if (value!.length < 10) {
                        return "Insira seu endere??o completo";
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(fillColor: Color(0xFFFF8BA0),
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .circular(10.0)),
                      labelText: 'Endere??o Completo',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    keyboardType: TextInputType.text,
                    autofocus: false,

                  ),
                ),


                Row(
                  children: [
                    Checkbox(
                      value: ckteste,
                      onChanged: (value) {
                        setState(() {
                          ckteste = !ckteste;
                        });
                      },
                    ),
                    Text('Aceito os'),
                    RaisedButton(color: Color(0xFFFF8BA0),
                        onPressed: () => _onButtonPressed(),
                        child: Text('TERMOS DE USO')),
                    Text('do aplicativo'),
                  ],
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xFFe41f7b)),
                        onPressed: ()
                        {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (BuildContext context) => Botao(),),
                          );
                        },
                        child: Padding(padding: const EdgeInsets.all(17.0),
                          child: Text('CADASTRAR', style: TextStyle(fontSize: 20),),
                        ))
                ),
              ],
            ),
          ),
        ),
      ),
    ),

  );
}

  void _onButtonPressed(){
    showModalBottomSheet(context: context, builder: (context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text('TERMOS DE USO', style: TextStyle(color: Color(0xFFE41F7B), fontWeight: FontWeight.bold),)),
          actions: [
            IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Color(0xFFE41F7B), size: 35,)),
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: Column(
            children:
            <Widget>[
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed neque non ipsum vulputate commodo. Etiam dictum elit vel massa pharetra venenatis. Mauris aliquam porttitor lorem, vel gravida ligula sodales ultrices. Ut rhoncus cursus finibus. Integer placerat mauris massa, sit amet ultricies orci sagittis suscipit. Aliquam lorem ante, dignissim at molestie quis, porttitor non metus. Proin quis enim lectus. Cras neque odio, porttitor sed dolor vitae, maximus euismod nibh. Ut aliquam lectus ac libero eleifend sagittis. '),
              Text('Aliquam erat volutpat. Suspendisse mollis sollicitudin quam vitae faucibus. Etiam elementum, eros in rhoncus tincidunt, elit arcu scelerisque purus, a pulvinar nunc diam eget nibh. Mauris venenatis, lorem eget ultrices congue, urna nulla ornare nisl, ac suscipit libero purus vitae turpis.'),
              Text('Duis pulvinar nunc magna, non viverra neque porta id. Suspendisse potenti. Praesent ullamcorper diam ac facilisis scelerisque. Maecenas varius velit id ligula congue dignissim. Nunc tempus at mi vel venenatis. ')
            ],
          ),
        ),
      );
    });
  }

}