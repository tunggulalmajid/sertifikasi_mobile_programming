import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AssetPage extends StatelessWidget {
  const AssetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Page"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: .center,
            children: [
              Text(
                "Importing Online Image",
                style: TextStyle(fontWeight: .bold),
              ),
              SizedBox(height: 5),
              Image.network("https://picsum.photos/id/237/200/300"),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: .center,
            children: [
              Text(
                "Importing Local Image",
                style: TextStyle(fontWeight: .bold),
              ),
              SizedBox(height: 5),
              Image.asset(
                "assets/images/download.jpg",
                width: 200,
                height: 200,
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: .center,
            children: [
              Text(
                "Importing Lottie Assets",
                style: TextStyle(fontWeight: .bold),
              ),
              SizedBox(height: 5),
              Lottie.asset("assets/lottie/jumping.json"),
            ],
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: .center,
            children: [
              Text(
                "Importing Lottie Assets",
                style: TextStyle(fontWeight: .bold),
              ),
              SizedBox(height: 5),
              Lottie.asset(
                "assets/lottie/WelcomeLottie.json",
                width: 200,
                height: 200,
              ),
            ],
          ),

          Column(
            crossAxisAlignment: .center,
            children: [
              Text(
                "Importing Lottie Assets",
                style: TextStyle(fontWeight: .bold),
              ),
              SizedBox(height: 5),
              Lottie.network(
                "https://lottie.host/d29c0c12-f3ec-461a-804e-046f74a55471/2zCESHuiQD.json",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
