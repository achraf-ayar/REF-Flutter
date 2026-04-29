
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Settings")),
      body: Center(
        child: Text(
          "Settings",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      );
  }
}
