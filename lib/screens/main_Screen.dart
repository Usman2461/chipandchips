import 'package:flutter/material.dart';

import '../widgets/clippedChip.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Circle Widget App"),centerTitle: true,),
      body: Column(children: [

        ClippedChip(FriendsProfiles: ["assets/ast11.png","assets/images22.png","assets/astrono.png", "stock123"], userProfile: '',)

      ],),
    );
  }
}


