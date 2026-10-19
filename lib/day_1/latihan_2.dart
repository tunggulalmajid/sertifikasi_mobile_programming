import 'dart:developer';

import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Pertemuan 1"),
        backgroundColor: Colors.amberAccent,
        toolbarHeight: 90,
        actions: [
          IconButton(
            onPressed: () {
              log("Tombol Ditekan");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(75),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amberAccent,
          ),
          child: Text(
            "Hello World",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
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
