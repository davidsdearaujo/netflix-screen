import 'package:flutter/material.dart';

import '../../../widgets/icon-widget.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconWidget(Icons.home, "Início", selected: true),
          IconWidget(Icons.search, "Buscas"),
          IconWidget(Icons.ondemand_video, "Em breve"),
          IconWidget(Icons.file_download, "Downloads"),
          IconWidget(Icons.menu, "Mais"),
        ],
      ),
    );
  }
}
