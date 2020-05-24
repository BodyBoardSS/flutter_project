import 'package:flutter/material.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class MovieHorizontal extends StatelessWidget {
  final List<Pelicula> peliculas;
  final Function siguientePagina;

  MovieHorizontal({@required this.peliculas, @required this.siguientePagina});

  final _pageController = new PageController(
    initialPage: 1,
    viewportFraction: 0.3
  );

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener((){
        if(_pageController.position.pixels >= _pageController.position.maxScrollExtent - 200){
            siguientePagina();
        }
    });

    return Container(
      height: _screenSize.height * 0.2,
      child: PageView.builder(
        pageSnapping: false,
        //children: _tarjetas(context),
        controller: _pageController,
        itemCount: peliculas.length,
        itemBuilder: (context, i) => _tarjeta(context, peliculas[i])
      ),
    );
  }

  Widget _tarjeta(BuildContext context, Pelicula pelicula){
    return Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                placeholder: AssetImage('asset/img/no-image.jpg'), 
                image: NetworkImage(pelicula.getPosterImg()),
                fit: BoxFit.cover,
                height: 133.0,
              ),
            ),
            SizedBox(height: 3.0,),
            Text(
              pelicula.title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,             
            )
          ],
        ),
      );
  }
}