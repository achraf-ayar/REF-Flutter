
import 'package:flutter/material.dart';
import 'package:tp1_dwm_flutter_app/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("REF APP")),
      body: Center(
        child: Text(
          "Hello World",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      drawer: new MyDrawer()
      );
  }
}
