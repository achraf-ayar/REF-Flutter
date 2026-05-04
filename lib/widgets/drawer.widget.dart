import 'package:flutter/material.dart';
import 'package:tp1_dwm_flutter_app/widgets/drawer.counter.widget.dart';
import 'package:tp1_dwm_flutter_app/widgets/drawer.graphics.widget.dart';
import 'package:tp1_dwm_flutter_app/widgets/drawer.settings.widget.dart';
import 'package:tp1_dwm_flutter_app/widgets/drawer.header.widget.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          new MyDrawerHeader(),
          new DrawerSettings(),
          new DrawerCounter(),
          new DrawerGraphics(),
        ],
      ),
    );
  }
}
