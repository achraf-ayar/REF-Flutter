import 'package:flutter/material.dart';

class DrawerGraphics2 extends StatelessWidget {
  const DrawerGraphics2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Graphics2"),
      leading: Icon(Icons.circle),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context, "/graphics2");
      },
    );
  }
}
