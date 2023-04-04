import 'package:flutter/material.dart';
//import 'package:stpc/src/models/My_model.dart';
import 'package:stpc/src/models/news_app.dart';

class ListaNoticias extends StatelessWidget {
  final List<Article> noticias;

  const ListaNoticias(this.noticias, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (BuildContext context, int index) {
        return _Noticia(noticia: noticias[index], index: index);
      },
    );
  }
}

class _Noticia extends StatelessWidget {
  final Article noticia;
  final int index;

  const _Noticia({required this.noticia, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _TarjetaTopBar(noticia, index),
        _TarjetaTitulo(noticia),
        _TarjetaImage(noticia),
      ],
    );
  }
}

class _TarjetaTopBar extends StatelessWidget {
  final Article noticia;
  final int index;
  const _TarjetaTopBar(this.noticia, this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Text('${index + 1}. ', style: const TextStyle(color: Colors.amber)),
          Text('${noticia.author}. ')
        ],
      ),
    );
  }
}

class _TarjetaTitulo extends StatelessWidget {
  final Article noticia;
  const _TarjetaTitulo(this.noticia);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(noticia.title,
            style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)));
  }
}

class _TarjetaImage extends StatelessWidget {
  final Article noticia;
  const _TarjetaImage(this.noticia);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Hola mundo'),
    );
  }
}
