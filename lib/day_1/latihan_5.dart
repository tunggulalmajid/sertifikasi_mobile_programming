import 'package:flutter/material.dart';

class Latihan5 extends StatelessWidget {
  const Latihan5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouting Apps (Column)"),
        backgroundColor: Colors.amberAccent,
        toolbarHeight: 75,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Container(
              height: 200,
              width: 200,
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
              color: Colors.red.shade800,
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
              color: Colors.blue.shade800,
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
              color: Colors.green.shade800,
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
              color: Colors.green,
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
              color: Colors.blue,
              child: Center(
                child: Text(
                  "INI CONTAINER",
                  style: TextStyle(color: Colors.white, fontWeight: .bold),
                ),
              ),
            ),
          ],
        ),
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
