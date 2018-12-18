import 'package:flutter/material.dart';

class HorizontalListWidget extends StatelessWidget {
  final String label;
  final int itemsCount;
  final IndexedWidgetBuilder itemBuilder;

  HorizontalListWidget(
      {@required this.itemBuilder,
      @required this.itemsCount,
      this.label,
      Key key})
      : assert(itemBuilder != null),
        assert(itemsCount != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        (label == null)
            ? Container()
            : Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        Container(
          height: 166,
          child: ListView.builder(
            itemCount: this.itemsCount + 1,
            itemBuilder: (context, index) => (index == 0)
                ? SizedBox(
                    width: 15,
                  )
                : itemBuilder(context, index - 1),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
