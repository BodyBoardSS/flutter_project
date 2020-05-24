import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,)
        ],
      ),
    );
  }

  Widget _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green,),
            title: Text('Tarjeta 1'),
            subtitle: Text('Este es un comentario largo sobre la primera tarjeta.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){
              }, 
              child: Text('Ok')),
              FlatButton(onPressed: (){
              }, 
              child: Text('Cancel'))
            ],
          )
        ],
      ) 
    );
  }

  Widget _cardTipo2(){
    final card = Container(
      //clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          //Image(
            //image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
          //),
          Container(
            child: Text('No tengo idea de que poner'),
            padding: EdgeInsets.all(10.0),  
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color:Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0,10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}