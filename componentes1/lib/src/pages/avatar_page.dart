
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  static final pageName = 'avatar';
  
   @override 
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget> [

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://pm1.narvii.com/6248/5d6ffaabf42c4c3f359ec3a27e39daa9e0d3789c_00.jpg'),
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('AC'),
              backgroundColor: Colors.blueGrey,
            ),
          ),
         
        ],
      ),
      body: Center (
        child: FadeInImage(
          placeholder: AssetImage('assets/cargando.gif'),
          image: NetworkImage('https://static.wikia.nocookie.net/marvelcinematicuniverse/images/a/ab/Iron_Man_Mark_LXXXV.png/revision/latest?cb=20190405192851&path-prefix=es'),
    ),
      ),
    );
  }
}