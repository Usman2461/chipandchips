import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClippedChip extends StatelessWidget {
  String userProfile;
  List<String> FriendsProfiles = [];
  double width = 50;

  ClippedChip(
      {Key? key,
      required this.userProfile,
      required this.FriendsProfiles,
    })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 47,
              child: SvgPicture.asset(
                  "assets/connector.svg",
                  color: Color(0xffdcdcdc),
                  height: 45,
                  semanticsLabel: 'Acme Logo'
              ),),
          Row(
            children: [
              Chip(
                shape: CircleBorder(),
                labelPadding: EdgeInsets.all(3.0),
                backgroundColor: Color(0xffdcdcdc),
                label: CircleAvatar(
                  foregroundImage: AssetImage("assets/ast11.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(
                  label: FriendsProfiles.length > 1
                      ? Row(
                          children: [
                            ...FriendsProfiles.map((e) => Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    foregroundImage: AssetImage(e),
                                  ),
                                ))
                          ],
                        )
                      : CircleAvatar(
                          backgroundColor: Color(0xffdcdcdc),
                          radius: 20,
                          child: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
