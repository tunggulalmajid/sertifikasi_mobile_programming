import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sertifikasi_pertama/day_1/latihan_1.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/checkout_page.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/onboarding_page.dart';

class TextInputPage extends StatelessWidget {
  TextInputPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Input Page"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text("Masukkan email"),
                labelText: "email",
              ),
              style: TextStyle(fontWeight: .bold, fontSize: 14),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text("Masukkan Password"),
                labelText: "Password",
              ),
              style: TextStyle(fontWeight: .bold, fontSize: 14),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if (emailController.text.isEmpty) {
                        log("Email Tidak Boleh Kosong");
                      } else {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) =>
                                OnboardingPage(email: emailController.text),
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: .bold, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
