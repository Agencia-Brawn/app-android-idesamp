import 'package:app_android/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Botao extends StatefulWidget {
  @override
  _BotaoState createState() => _BotaoState();
}
class _BotaoState extends State<Botao> {
  bool checkTermo = true;
  bool ckteste = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Resgate'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: Text('Sair', style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 200, height: 200,
                  child: Center(child: Text('AJUDA SOLICITADA', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),),
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(100.0),
                        topRight: const Radius.circular(100.0),
                        bottomLeft: const Radius.circular(100.0),
                        bottomRight: const Radius.circular(100.0),
                      )),
                ),
                Text('NÍVEL DE PRIGO', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('Selecione uma das opções'),
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
                    RaisedButton(color: Colors.white,
                        onPressed: () => _onButtonPressed(),
                        child: Text('TERMOS DE USO')),
                  ],
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
                    RaisedButton(color: Colors.white,
                        onPressed: () => _onButtonPressed(),
                        child: Text('TERMOS DE USO')),
                  ],
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
                    RaisedButton(color: Colors.white,
                        onPressed: () => _onButtonPressed(),
                        child: Text('TERMOS DE USO')),
                  ],
                ),
              ],
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