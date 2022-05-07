import 'package:flutter/material.dart';

class ClippedChip extends StatelessWidget {
   String userProfile;
   List<String> FriendsProfiles = [];
   double width=50;
   ClippedChip({Key? key, required this.userProfile, required this.FriendsProfiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 56,
              child: Image(height:40,image: AssetImage("assets/connector.png"), fit: BoxFit.scaleDown,)),
          Row(
            children: [
              Chip(label: CircleAvatar(foregroundImage: AssetImage("assets/ast11.png"),),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(label: Row(
                  children: [
                    ...FriendsProfiles.map((e) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 20,
                        foregroundImage: AssetImage(e),),
                    ))
                  ],
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
