import 'package:flutter/material.dart';
import 'bottom-bar/bottom-bar-widget.dart';
import 'cartaz-widget.dart';
import 'em-alta/em-alta-widget.dart';
import 'topbar-widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: BottomBarWidget(),
      body: Stack(
        children: <Widget>[
          ListView(
            controller: controller,
            children: <Widget>[
              CartazWidget(),
              EmAltaWidget(),
            ],
          ),
          TopbarWidget(controller: controller),
        ],
      ),
    );
  }
}



