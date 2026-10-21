import 'package:flutter/material.dart';
import 'package:sertifikasi_pertama/day_1/latihan_1.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/checkout_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding Page"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text("Selamat Datang", style: TextStyle(fontSize: 16)),
            Text(email, style: TextStyle(fontSize: 20, fontWeight: .bold)),
          ],
        ),
      ),
    );
  }
}
