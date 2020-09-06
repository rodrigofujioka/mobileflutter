
import 'dart:ui';

import 'package:flutter/material.dart';

class MaterialShowImageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exibe Imagem ',
      theme: ThemeData(
        primarySwatch: Colors.blue,  // Experimente mudar o Color
      ),
      home: MyMShowImagePage(title: 'Aula de Flutter do Fuji - Exercício Image '),
    );
  }
}

class MyMShowImagePage extends StatefulWidget {
  MyMShowImagePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyShowImagePageState createState() => _MyShowImagePageState();
}

class _MyShowImagePageState extends State<MyMShowImagePage> {

  var _exibeImagem = false;
  var _headText = 'Bem vindo';

  @override
  Widget build(BuildContext context) {

    var imagemTdc = Image.asset('images/aula_fujioka.jpg');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _headText,
            ),
            if(_exibeImagem)
              imagemTdc
            else
              Text(
                'Sem imagem para exibir',
                style: Theme.of(context).textTheme.headline4,
              ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _showImage,
            tooltip: 'Exibir o Fuji',
            child: Icon(Icons.favorite),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: _hideImage,
            tooltip: 'Esconder o Fuji',
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }

  void _showImage() {
    setState(() {
      _headText = 'Esse é o Fuji';
      _exibeImagem=true;
    });
  }

  void _hideImage() {
    setState(() {
      _headText = 'Bem vindo a aula do Fujioka';
      _exibeImagem=false;
    });
  }
}
