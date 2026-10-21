import 'package:flutter/material.dart';
import 'package:sertifikasi_pertama/day_1/latihan_1.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/checkout_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
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
                ).push(MaterialPageRoute(builder: (context) => CheckoutPage()));
              },
              child: Text("Checkout Page", style: TextStyle(fontWeight: .bold)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali", style: TextStyle(fontWeight: .bold)),
            ),
          ],
        ),
      ),
    );
  }
}
