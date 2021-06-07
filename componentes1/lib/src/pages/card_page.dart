import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  
   @override 
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget> [
          _tarjetaTipo1(context),
          SizedBox(height: 30.0),
          _tarjetaTipo2(),
          SizedBox(height: 30.0),
          _tarjetaTipo1(context),
          SizedBox(height: 30.0),
          _tarjetaTipo2(),
          SizedBox(height: 30.0),
          _tarjetaTipo1(context),
          SizedBox(height: 30.0),
          _tarjetaTipo2(),
          SizedBox(height: 30.0),
          _tarjetaTipo1(context),
          SizedBox(height: 30.0),
          _tarjetaTipo2(),
          SizedBox(height: 30.0),
          _tarjetaTipo1(context),
          SizedBox(height: 30.0),
          _tarjetaTipo2(),
          SizedBox(height: 30.0),
        ]
      ),
    );
  }


  Widget _tarjetaTipo1(BuildContext context) {
    return Card (
      
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.grey),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Esta es la descripción de la tarjeta'),
          ),
          
          Container( 
            margin: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
              TextButton(
                child: Text('Más info'),
                onPressed: () => {
                    _mostrarAlerta(context, 'Titulo Alerta', 'Este es el contenido completo de la alerta')
                }, 
                ),
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {}, ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _tarjetaTipo2() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/cargando.gif'), 
            image: NetworkImage('https://www.disneyholidays.com/walt-disney-world/images/deals/mobile/guests-on-slinky-dog-dash-coaster-in-toy-story-land.jpg'),
            height: 250,
            fit: BoxFit.cover
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Disney, Orlando')
          )
        ] 
      ),
    );

    return Container (
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow:<BoxShadow> [
          BoxShadow(
            color:Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(5.0, 5.0)
          ),
        ]
      ),
      child: ClipRRect(
        child: card,
         borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

void _mostrarAlerta (BuildContext context, String titulo, String contenido) {

  showDialog(
    context: context,
    barrierDismissible: true, 
    builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(titulo),
        content: Column (
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text(contenido),
          //FlutterLogo( size:50 )
          
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
