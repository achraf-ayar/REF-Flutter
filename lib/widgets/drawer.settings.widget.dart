import 'package:flutter/material.dart';

class DrawerSettings extends StatelessWidget {
  const DrawerSettings ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Settings"),
      leading: Icon(Icons.settings),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context, "/settings");
      },
    );
  }
}
