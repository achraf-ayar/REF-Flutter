import 'package:flutter/material.dart';

class DrawerGraphics extends StatelessWidget {
  const DrawerGraphics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Graphics"),
      leading: Icon(Icons.circle),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context, "/graphics");
      },
    );
  }
}
