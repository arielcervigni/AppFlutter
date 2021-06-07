
import 'package:flutter/material.dart';

import 'dart:math';



class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.green;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedor Animado'),
      ),
      body: Center (
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          height: _heigth,
          width: _width,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon (Icons.play_arrow),
        onPressed: _cambiarForma,
      ),
    );
  }


  void _cambiarForma() {
  
    final random = Random();

    setState( () {
      _width = random.nextInt(300).toDouble();
      _heigth = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
  
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
   
    }); 
  }
}