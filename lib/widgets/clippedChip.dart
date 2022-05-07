import 'package:flutter/material.dart';

class ClippedChip extends StatelessWidget {
  String userProfile;
  List<String> FriendsProfiles = [];
  double width = 50;
  List<Color> trayColor;

  ClippedChip(
      {Key? key,
      required this.userProfile,
      required this.FriendsProfiles,
      this.trayColor = const [
        Color(0xffdcdcdc),
        Color(0xffdcdcdc),
        Color(0xffdcdcdc)
      ]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return RadialGradient(
          center: Alignment.topLeft,
          radius: 1.0,
          colors: trayColor,
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: Container(
        height: 60.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 50,
                child: Image(
                  height: 40,
                  image: AssetImage("assets/connector.png"),
                  fit: BoxFit.scaleDown,
                )),
            Row(
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color(0xffdcdcdc),
                  child: CircleAvatar(
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
      ),
    );
  }
}
