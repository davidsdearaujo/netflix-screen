import 'package:flutter/material.dart';

import '../../widgets/icon-widget.dart';
import 'populares/populares-widget.dart';

class CartazWidget extends StatelessWidget {
  const CartazWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height + 50,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey.withOpacity(0.5),
                  Colors.transparent,
                  Theme.of(context).backgroundColor,
                ],
                stops: [0.1, 0.6, 0.9],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Image.network(
              "https://http2.mlstatic.com/poster-cartaz-stranger-things-mundo-invertido-arte-oferta-D_NQ_NP_668431-MLB26197936347_102017-F.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 490,
            left: 5,
            right: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconWidget(Icons.add, "Minha lista"),
                RaisedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.play_arrow, size: 27),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Assitir",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                IconWidget(Icons.info_outline, "Saiba mais"),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.75,
              left: 0,
              right: 0,
              child: PopularesWidget())
        ],
      ),
    );
  }
}
