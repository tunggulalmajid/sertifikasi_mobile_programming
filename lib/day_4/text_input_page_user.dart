import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sertifikasi_pertama/day_1/latihan_1.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/checkout_page.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/onboarding_page.dart';

class TextInputPageUser extends StatefulWidget {
  const TextInputPageUser({super.key});

  @override
  State<TextInputPageUser> createState() => _TextInputPageUserState();
}

class _TextInputPageUserState extends State<TextInputPageUser> {
  TextEditingController nameController = TextEditingController();
  TextEditingController backnameController = TextEditingController();
  TextEditingController umurController = TextEditingController();
  String hasilResponse = "Belum Ada Data";

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
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text("Masukkan Nama Depan"),
                labelText: "Nama Depan",
              ),
              style: TextStyle(fontWeight: .bold, fontSize: 14),
            ),
            SizedBox(height: 10),
            TextField(
              controller: backnameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text("Masukkan Nama Belakang"),
                labelText: "Nama Belakang",
              ),
              style: TextStyle(fontWeight: .bold, fontSize: 14),
            ),
            SizedBox(height: 10),

            TextField(
              controller: umurController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text("Masukkan umur"),
                labelText: "umur",
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
                    onPressed: () async {
                      try {
                        var response = await http.post(
                          Uri.parse("https://dummyjson.com/users/add"),
                          headers: {"headers": ""},
                          body: {
                            "firstName": nameController.text,
                            "lastName": backnameController.text,
                            "age": umurController.text,
                          },
                        );

                        Map<String, dynamic> data =
                            json.decode(response.body) as Map<String, dynamic>;

                        setState(() {
                          hasilResponse =
                              "${data["firstName"]} ${data["lastName"]} - ${data["age"]}";
                        });
                      } catch (e) {
                        log("ERROR : $e");
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
            SizedBox(height: 10),
            Divider(),
            Text(hasilResponse),
          ],
        ),
      ),
    );
  }
}
