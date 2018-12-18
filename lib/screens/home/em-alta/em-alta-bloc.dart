import 'dart:async';

import '../../../widgets/filme/filme-model.dart';
import 'em-alta-mooc.dart';

class EmAltaBloc{
  var _controller = StreamController<List<FilmeModel>>();
  Stream<List<FilmeModel>> get outPopulares => _controller.stream;

  
  void get buscarPopulares async {
    var lista = EmAltaMooc.buscarPopulares;
    _controller.add(lista);
  } 

  void dispose(){
    _controller.close();
  }
}