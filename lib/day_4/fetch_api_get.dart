import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchApiGet extends StatefulWidget {
  const FetchApiGet({super.key});

  @override
  State<FetchApiGet> createState() => _FetchApiGetState();
}

class _FetchApiGetState extends State<FetchApiGet> {
  late String body;
  late String id;
  late String name;
  late String email;
  bool isLoading = false;

  @override
  void initState() {
    id = "belum ada data";
    name = "belum ada data";
    email = "belum ada data";
    body = "belum ada data";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP Get APPS"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            isLoading
                ? Padding(
                    padding: EdgeInsetsGeometry.all(5),
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      Text("ID : $id"),
                      Text("Nama : $name "),
                      Text("Email : $email"),
                    ],
                  ),

            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                var myrespons = await http.get(
                  Uri.parse("https://dummyjson.com/users/3"),
                );

                if (myrespons.statusCode == 200) {
                  log("Berhasil Mengambil ${myrespons.statusCode}");
                  Map<String, dynamic> data =
                      json.decode(myrespons.body) as Map<String, dynamic>;

                  setState(() {
                    id = data["id"].toString();
                    name = data["firstName"].toString();
                    email = data["email"].toString();

                    isLoading = false;
                  });
                } else {
                  setState(() {
                    body = "Error ${myrespons.statusCode}";
                  });
                }
              },
              child: Text("GET DATA"),
            ),
          ],
        ),
      ),
    );
  }
}
