import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override 
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerta')
      ),
      body:Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

void _mostrarAlerta (BuildContext context) {

  showDialog(
    context: context,
    barrierDismissible: true, 
    builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('Alerta'),
        content: Column (
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text('Este es el contenido de la caja de la alerta.'),
          //FlutterLogo( size:50 )

          Container(
            margin: EdgeInsets.only(top: 20.0),
            child:
              CircleAvatar (
              backgroundImage: 
              AssetImage ('assets/ac.png'),
              backgroundColor: Colors.white,
            ),
          ),
          
          ],
        ),
        actions: <Widget> [
          TextButton(
            onPressed: () => Navigator.of(context).pop(), 
            child: Text('Cancelar')
            ),
          TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            }, 
            child: Text('Aceptar')
            ),
        ]
      );
    }
    );

}

}

