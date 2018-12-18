import 'dart:async';

import '../../../widgets/filme/filme-model.dart';
import 'populares-mooc.dart';

class PopularesBloc{
  var _controller = StreamController<List<FilmeModel>>();
  Stream<List<FilmeModel>> get outPopulares => _controller.stream;

  
  void get buscarPopulares async {
    var lista = PopularesMooc.buscarPopulares;
    _controller.add(lista);
  } 

  void dispose(){
    _controller.close();
  }
}