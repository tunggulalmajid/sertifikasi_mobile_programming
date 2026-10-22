import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchApiBuilder extends StatefulWidget {
  const FetchApiBuilder({super.key});

  @override
  State<FetchApiBuilder> createState() => _FetchApiBuilderState();
}

class _FetchApiBuilderState extends State<FetchApiBuilder> {
  late Future<List> futureUsers;

  Future<List> fetchUsers() async {
    var users = await http.get(Uri.parse("https://dummyjson.com/users"));
    if (users.statusCode == 200) {
      log("Request berhasil ${users.statusCode}");
      List data = (json.decode(users.body) as Map<String, dynamic>)["users"];
      return data;
    } else {
      log("Request gagal : ${users.statusCode}");
      throw Exception("Gagal Memuat Data");
    }
  }

  @override
  void initState() {
    futureUsers = fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
        backgroundColor: Colors.amberAccent,
      ),
      body: FutureBuilder(
        future: futureUsers,
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            List users = asyncSnapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                var user = users[index];
                return ListTile(
                  title: Text(user["firstName"]),
                  subtitle: Text(user["email"]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
