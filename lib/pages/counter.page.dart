import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Counter")),
      body: Center(
        child: Text(
          "Counter value = $counter",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "Decrement",
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                counter--;
              });
            },
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            heroTag: "Increment",
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
        ],
      ),
    );
  }
}
