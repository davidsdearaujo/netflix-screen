import 'package:flutter/material.dart';

class TopbarWidget extends StatelessWidget {
  TopbarWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final ScrollController controller;
  final double height = 80;
  double _lastDownOffset = 0;
  double _lastUpOffset = 0;
  double _lastOffset = 0;
  double _yOffset = 0;

  double get yOffset {
    if (_lastOffset > controller.offset) //Quando estiver subindo
    {
      double dif = _lastDownOffset - controller.offset;
      _yOffset = (dif <= height)
          ? -(height - dif) //Quando o topbar não foi apresentado completamente
          : _yOffset = 0; //Quando o topbar foi apresentado completamente
      _lastUpOffset = controller.offset;
    } else {
      _lastDownOffset = controller.offset;
      _yOffset = _lastUpOffset - controller.offset;
    }
    _lastOffset = controller.offset;
    return _yOffset;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, child) {
        return Transform.translate(
          offset: Offset(0, yOffset),
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            width: double.infinity,
            height: height,
            color: Colors.black.withOpacity(
                (controller.offset >= 257) ? 1 : controller.offset / 257),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset("images/logo.png", fit: BoxFit.cover, height: 30),
                Text(
                  "Séries",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Text(
                  "Filmes",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Text(
                  "Minha Lista",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
