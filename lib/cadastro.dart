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
    body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formcadastro,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Login(),
                        ),
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          'CADASTRO',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.green,
                          ),
                        ),

                      ],

                    ),

                  ),
                ),

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
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(fillColor: Colors.green[200],
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .circular(10.0)),
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
                    decoration: InputDecoration(fillColor: Colors.green[200],
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .circular(10.0)),
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
                    decoration: InputDecoration(fillColor: Colors.green[200],
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
                        return "Isso não é um e-mail";
                      }
                      return null;
                    },
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(fillColor: Colors.green[200],
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

                // ENDEREÇO
                Padding(padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    controller: _endereco,
                    validator: (value) {
                      if (value!.length < 10) {
                        return "Insira seu endereço completo";
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(fillColor: Colors.green[200],
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .circular(10.0)),
                      labelText: 'Endereço Completo',
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
                    RaisedButton(color: Colors.white,
                        onPressed: () => _onButtonPressed(),
                        child: Text('TERMOS DE USO')),
                    Text('do aplicativo'),
                  ],
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[600]),
                        onPressed: ()  { Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Cadastro(),
                          ),
                        );},
                        child:
                        Padding(padding: const EdgeInsets.all(17.0),
                          child: Text('CADASTRAR', style: TextStyle(
                              fontSize: 20),),
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
          title: Center(child: Text('TERMOS DE USO', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)),
          actions: [
            IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.green, size: 35,)),
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