import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 1"),
        backgroundColor: Colors.amberAccent,
        toolbarHeight: 75,
        centerTitle: true,
      ),
      body: Center(child: Text("Hello World")),
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
