import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
final estiloTexto = new TextStyle( fontSize: 25);
final conteo=10;


@override
  Widget build(BuildContext context) {
    
    return Scaffold
    (
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
           children:<Widget>[
             Text("Número de clicks", style:estiloTexto),
              Text('$conteo', style:estiloTexto)

           ],
        )
        ,
      ),
      floatingActionButton: FloatingActionButton      
      ( 
        
        backgroundColor:Colors.green[400] ,      
        child: Icon(Icons.add),
        onPressed: (){
          print('Hola mundo');
        },

      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat

      
    );
    
  }

}