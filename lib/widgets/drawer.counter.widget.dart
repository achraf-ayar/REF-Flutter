import 'package:flutter/material.dart';

class DrawerCounter extends StatelessWidget {
  const DrawerCounter ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Counter"),
      leading: Icon(Icons.add),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context, "/counter");
      },
    );
  }
}
