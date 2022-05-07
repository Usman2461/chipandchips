import 'package:flutter/material.dart';

import '../widgets/clippedChip.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Circle Widget App"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ClippedChip(
            FriendsProfiles: ["assets/ast11.png",
              "assets/images22.png",
              "assets/astrono.png",
            "assets/images22.png"], userProfile: '', trayColor: [
            Color(0xffdcdcdc),
            Color(0xffdcdcdc),
            Color(0xffdcdcdc)
          ],)

        ],),
      ),
    );
  }
}


