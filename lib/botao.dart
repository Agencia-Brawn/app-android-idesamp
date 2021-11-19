import 'package:app_android/login.dart';
import 'package:app_android/perfil.dart';
import 'package:app_android/sobre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Botao extends StatefulWidget {
  @override
  _BotaoState createState() => _BotaoState();
}
class _BotaoState extends State<Botao> {
  bool checkTermo = true;
  bool ckteste1 = false;
  bool ckteste2 = false;
  bool ckteste3 = false;
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 200, height: 200,
                      child: Center(child: Text('SOLICITAR RESGATE', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),),
                      decoration: new BoxDecoration(gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFF44336),
                          Color(0xFFFF7267),
                          Color(0xFFFFA18A),
                        ],
                      ), borderRadius: BorderRadius.only(topLeft: const Radius.circular(100.0), topRight: const Radius.circular(100.0), bottomLeft: const Radius.circular(100.0), bottomRight: const Radius.circular(100.0), )),
                    ),
                  ],
                ),
                Container(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:25, bottom: 10, right: 10),
                      child: Text('Nível de Risco:', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => _vermelho(),
                      child: Text('Vermelho', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(primary: Colors.red, shape: CircleBorder(), padding: EdgeInsets.all(35),),
                    ),
                    ElevatedButton(
                      onPressed: () => _laranja(),
                      child: Text('Laranja', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(primary: Colors.orange, shape: CircleBorder(), padding: EdgeInsets.all(35),),
                    ),
                    ElevatedButton(
                      onPressed: () => _amarelo(),
                      child: Text('Amarelo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(primary: Colors.yellow[500], shape: CircleBorder(), padding: EdgeInsets.all(35),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:25, bottom: 1),
                      child: Text('Serviços', textAlign: TextAlign.center, style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                Card(
                    child:Container(
                      height: 100,
                      color: Colors.white,
                        child: Row(
                          children: [
                              Center(
                                child: Padding(padding: EdgeInsets.all(10),
                                  child: Expanded(child:Image.asset("assets/boletim.png"), flex:2 ,),
                                ),
                              ),
                              Expanded(
                                child:Container(alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Expanded(flex: 15,
                                        child: ListTile(title: Text("Boletim de Ocorrência", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),),
                                      ),
                                      Expanded(flex: 8,
                                        child: Row(
                                          children: [
                                            Container(width: 10,),
                                            TextButton(
                                              child:Text("CONTINUAR", style: TextStyle(fontWeight: FontWeight.bold,),),
                                                onPressed: abrirBoletim
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ), flex:8 ,
                              ),
                          ],
                        ),
                    ),
                      elevation: 8,
                    ),
                Card(
                  child:Container(
                    height: 100,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Center(
                          child: Padding(padding: EdgeInsets.all(10),
                            child: Expanded(child:Image.asset("assets/anexo.png"), flex:2 ,),
                          ),
                        ),
                        Expanded(
                          child:Container(alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Expanded(flex: 15,
                                  child: ListTile(title: Text("Anexar Medida Protetiva", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),),
                                ),
                                Expanded(flex: 8,
                                  child: Row(
                                    children: [
                                      Container(width: 10,),
                                      TextButton(
                                        child:Text("CONTINUAR", style: TextStyle(fontWeight: FontWeight.bold,),),
                                        onPressed: abrirMedida,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ), flex:8 ,
                        ),
                      ],
                    ),
                  ),
                  elevation: 8,
                ),
                Card(
                  child:Container(
                    height: 100,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Center(
                          child: Padding(padding: EdgeInsets.all(10),
                            child: Expanded(child:Image.asset("assets/especialistas.png"), flex:2 ,),
                          ),
                        ),
                        Expanded(
                          child:Container(alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Expanded(flex: 15,
                                  child: ListTile(title: Text("Falar Com Especialistas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),),
                                ),
                                Expanded(flex: 8,
                                  child: Row(
                                    children: [
                                      Container(width: 10,),
                                      TextButton(
                                        child:Text("CONTINUAR", style: TextStyle(fontWeight: FontWeight.bold,),),
                                        onPressed: abrirZap,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ), flex:8 ,
                        ),
                      ],
                    ),
                  ),
                  elevation: 8,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap:bottonMenuNavigation,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: '', ),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: '',  ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined ), label: '',),
        ],
      ),
    );
  }


  abrirZap() async {
    const url = 'https://api.whatsapp.com/send?phone=559185428044';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível acessar a $url';
    }
  }

  abrirMedida() async {
    const url = 'https://docs.google.com/forms/d/e/1FAIpQLSdCqTcDkP0vAOmbaq-zP1-Aq0VTjLZqfpo5fxsrcH1ZuNidvg/viewform?usp=sf_link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível acessar a $url';
    }
  }

  abrirBoletim() async {
    const url = 'https://www.delegaciavirtual.pa.gov.br/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível acessar a $url';
    }
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

  void _vermelho(){
    showModalBottomSheet(context: context, builder: (context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text('NÍVEL DE PERIGO VERMELHO', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)),
          actions: [
            IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.red, size: 35,)),
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children:
            <Widget>[
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed neque non ipsum vulputate commodo. Etiam dictum elit vel massa pharetra venenatis. Mauris aliquam porttitor lorem, vel gravida ligula sodales ultrices. Ut rhoncus cursus finibus. Integer placerat mauris massa, sit amet ultricies orci sagittis suscipit. Aliquam lorem ante, dignissim at molestie quis, porttitor non metus. Proin quis enim lectus. Cras neque odio, porttitor sed dolor vitae, maximus euismod nibh. Ut aliquam lectus ac libero eleifend sagittis. '),
              Text('Aliquam erat volutpat. Suspendisse mollis sollicitudin quam vitae faucibus. Etiam elementum, eros in rhoncus tincidunt, elit arcu scelerisque purus, a pulvinar nunc diam eget nibh. Mauris venenatis, lorem eget ultrices congue, urna nulla ornare nisl, ac suscipit libero purus vitae turpis.'),
              Text('Duis pulvinar nunc magna, non viverra neque porta id. Suspendisse potenti. Praesent ullamcorper diam ac facilisis scelerisque. Maecenas varius velit id ligula congue dignissim. Nunc tempus at mi vel venenatis. '),
              Container(height: 25,),
              ElevatedButton.icon(
                icon: Icon(Icons.surround_sound),
                label: Text("SOLICITAR AJUDA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onPressed: () => print("it's pressed"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              Container(height: 25,),
            ],
          ),
        ),
      );
    });
  }
  void _laranja(){
    showModalBottomSheet(context: context, builder: (context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text('NÍVEL DE PERIGO LARANJA', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)),
          actions: [
            IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.orange, size: 35,)),
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children:
            <Widget>[
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed neque non ipsum vulputate commodo. Etiam dictum elit vel massa pharetra venenatis. Mauris aliquam porttitor lorem, vel gravida ligula sodales ultrices. Ut rhoncus cursus finibus. Integer placerat mauris massa, sit amet ultricies orci sagittis suscipit. Aliquam lorem ante, dignissim at molestie quis, porttitor non metus. Proin quis enim lectus. Cras neque odio, porttitor sed dolor vitae, maximus euismod nibh. Ut aliquam lectus ac libero eleifend sagittis. '),
              Text('Aliquam erat volutpat. Suspendisse mollis sollicitudin quam vitae faucibus. Etiam elementum, eros in rhoncus tincidunt, elit arcu scelerisque purus, a pulvinar nunc diam eget nibh. Mauris venenatis, lorem eget ultrices congue, urna nulla ornare nisl, ac suscipit libero purus vitae turpis.'),
              Text('Duis pulvinar nunc magna, non viverra neque porta id. Suspendisse potenti. Praesent ullamcorper diam ac facilisis scelerisque. Maecenas varius velit id ligula congue dignissim. Nunc tempus at mi vel venenatis. '),
              Container(height: 25,),
              ElevatedButton.icon(
                icon: Icon(Icons.surround_sound),
                label: Text("SOLICITAR AJUDA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onPressed: () => print("it's pressed"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              Container(height: 25,),
            ],
          ),
        ),
      );
    });
  }
  void _amarelo(){
    showModalBottomSheet(context: context, builder: (context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text('NÍVEL DE PERIGO AMARELO', style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),)),
          actions: [
            IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.yellow, size: 35,)),
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children:
            <Widget>[
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed neque non ipsum vulputate commodo. Etiam dictum elit vel massa pharetra venenatis. Mauris aliquam porttitor lorem, vel gravida ligula sodales ultrices. Ut rhoncus cursus finibus. Integer placerat mauris massa, sit amet ultricies orci sagittis suscipit. Aliquam lorem ante, dignissim at molestie quis, porttitor non metus. Proin quis enim lectus. Cras neque odio, porttitor sed dolor vitae, maximus euismod nibh. Ut aliquam lectus ac libero eleifend sagittis. '),
              Text('Aliquam erat volutpat. Suspendisse mollis sollicitudin quam vitae faucibus. Etiam elementum, eros in rhoncus tincidunt, elit arcu scelerisque purus, a pulvinar nunc diam eget nibh. Mauris venenatis, lorem eget ultrices congue, urna nulla ornare nisl, ac suscipit libero purus vitae turpis.'),
              Text('Duis pulvinar nunc magna, non viverra neque porta id. Suspendisse potenti. Praesent ullamcorper diam ac facilisis scelerisque. Maecenas varius velit id ligula congue dignissim. Nunc tempus at mi vel venenatis. '),
              Container(height: 25,),
              ElevatedButton.icon(
                icon: Icon(Icons.surround_sound),
                label: Text("SOLICITAR AJUDA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onPressed: () => print("it's pressed"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              Container(height: 25,),
            ],
          ),
        ),
      );
    });
  }

}