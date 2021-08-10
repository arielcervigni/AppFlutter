import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();

}


class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearSlider = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider')
      ),
      body: Container (
        padding: EdgeInsets.only(top:50.0),
        child: Column(children: <Widget> [
          _crearSlider(),
          _crearCheckbox(),
          _crearSwitch(),
          Expanded(
            child: _crearImagen(),
          ),
        ],
        ), 
      ),
    );
  }

Widget _crearSlider() {

  return Slider(
    activeColor: Colors.indigoAccent,
    label: 'Tamaño de la imagen',
    //divisions: 20,
    value: _valorSlider,
    min: 10.0,
    max: 400.0,
    onChanged: ( _bloquearSlider  ) ? null : ( valor ) {
      setState(() {
        _valorSlider = valor;
      });
     },
  );
}

Widget _crearImagen(){

  return Image(
    image: NetworkImage('https://static.wikia.nocookie.net/marvelcinematicuniverse/images/b/b9/Iron_Man_Mark_L.png/revision/latest?cb=20180716231556&path-prefix=es'), 
    width: _valorSlider,
    fit: BoxFit.contain,
  );

}


Widget _crearCheckbox () {
  
  return CheckboxListTile(
    title: Text('Bloquear Slider'),
    value: _bloquearSlider, 
    onChanged: ( valor ) {
      setState(() {
        _bloquearSlider = valor;
      });
    } 
  );   
}

Widget _crearSwitch () {
  
  return SwitchListTile(
    title: Text('Bloquear Slider'),
    value: _bloquearSlider, 
    onChanged: ( valor ) {
      setState(() {
        _bloquearSlider = valor;
      });
    } 
  );   
}

}