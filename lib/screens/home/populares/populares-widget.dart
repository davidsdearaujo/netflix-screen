import 'package:flutter/material.dart';

import '../../../widgets/filme/filme-model.dart';
import '../../../widgets/filme/filme-widget.dart';
import '../../../widgets/horizontal-list-widget.dart';
import 'populares-bloc.dart';

class PopularesWidget extends StatefulWidget {
  @override
  PopularesWidgetState createState() {
    return new PopularesWidgetState();
  }
}

class PopularesWidgetState extends State<PopularesWidget> {
  PopularesBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = PopularesBloc();
    bloc.buscarPopulares;
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<FilmeModel>>(
      stream: bloc.outPopulares,
      builder: (_, snapshot) {
        if (!snapshot.hasData)
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 2.3,
            ),
            height: 50,
            child: CircularProgressIndicator(strokeWidth: 5),
          );
        else
          return HorizontalListWidget(
            label: "Populares na Netflix",
            itemsCount: snapshot.data.length,
            itemBuilder: (_, index) {
              return FilmeWidget(
                model: snapshot.data[index],
              );
            },
          );
      },
    );
  }
}
