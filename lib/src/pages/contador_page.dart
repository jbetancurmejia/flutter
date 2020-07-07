import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> 
{
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
          backgroundColor: Colors.purple[300],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Número de clicks", style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto),
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          backgroundColor: Colors.orange[400],
          child: Icon(Icons.exposure_zero),
          onPressed: _restablecer,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          backgroundColor: Colors.blue[400],
          child: Icon(Icons.remove),
          onPressed: _remover,
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          backgroundColor: Colors.green[400],
          child: Icon(Icons.add),
          onPressed: _agregar,
        )
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _remover() {
    setState(() => _conteo--);
  }

  void _restablecer() {
    setState(() => _conteo = 0);
  }
}
