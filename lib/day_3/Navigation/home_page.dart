import 'package:flutter/material.dart';
import 'package:sertifikasi_pertama/day_1/latihan_1.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => ProductPage()));
              },
              child: Text("Product Page", style: TextStyle(fontWeight: .bold)),
            ),
          ],
        ),
      ),
    );
  }
}
