import 'package:flutter/material.dart';

import 'filme-model.dart';


class FilmeWidget extends StatelessWidget {
  final FilmeModel model;

  FilmeWidget({@required this.model, Key key})
      : assert(model != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Image.network(
        model.urlImagem,
        fit: BoxFit.cover,
        width: 117,
      ),
    );
  }
}
