import 'package:flutter/material.dart';

class Latihan6 extends StatelessWidget {
  const Latihan6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouting Apps (Stack)"),
        backgroundColor: Colors.amberAccent,
        toolbarHeight: 75,
        centerTitle: true,
      ),
      body: Stack(
        
        children: [
          Container(
            height: 250,
            width: 250,
            color: Colors.red,
            child: Center(
              child: Text(
                "INI CONTAINER",
                style: TextStyle(color: Colors.white, fontWeight: .bold),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue.shade400,
            child: Center(
              child: Text(
                "INI CONTAINER",
                style: TextStyle(color: Colors.white, fontWeight: .bold),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.blue.shade800,
            child: Center(
              child: Text(
                "INI CONTAINER",
                style: TextStyle(color: Colors.white, fontWeight: .bold),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        splashColor: Colors.amberAccent.shade700,
        tooltip: "",
        child: Icon(Icons.add),
      ),
    );
  }
}
