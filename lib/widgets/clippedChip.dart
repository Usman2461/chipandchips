import 'package:flutter/material.dart';

class ClippedChip extends StatelessWidget {
   String userProfile;
   List<String> FriendsProfiles = [];
   double width=50;
   ClippedChip({Key? key, required this.userProfile, required this.FriendsProfiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        SizedBox(
      height: 90.0,
      width: FriendsProfiles.length<2?160:FriendsProfiles.length*80,
      child: ClipPath(
        clipper: CustomClipPath(),
        child: Chip(label: Row(
          children: [
            CircleAvatar(radius: 20.0, child: Icon(Icons.star, color: Colors.white,),),
            SizedBox(width: 70,),
            ...FriendsProfiles.map((e) => Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                radius: 20,
                foregroundImage: AssetImage(e),),
            ))
          ],
        ),),
      ),
    );
  }
}


class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.moveTo(size.width * 0.8778848, 0);
    path.lineTo(size.width * 0.4401651, 0);
    path.arcToPoint(Offset(size.width * 0.3433113, size.height * 0.1957085),
        radius:
        Radius.elliptical(size.width * 0.2218096, size.height * 0.4987930),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.lineTo(size.width * 0.3433113, size.height * 0.1957085);
    path.lineTo(size.width * 0.3109976, size.height * 0.3582477);
    path.cubicTo(
        size.width * 0.2960634,
        size.height * 0.4332588,
        size.width * 0.2690989,
        size.height * 0.4360304,
        size.width * 0.2538154,
        size.height * 0.3555655);
    path.arcToPoint(Offset(size.width * 0.2030523, size.height * 0.1251676),
        radius:
        Radius.elliptical(size.width * 0.2818497, size.height * 1.154135),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.arcToPoint(Offset(size.width * 0.1860221, size.height * 0.07393831),
        radius:
        Radius.elliptical(size.width * 0.1240584, size.height * 0.5080018),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.lineTo(size.width * 0.1858475, size.height * 0.07393831);
    path.lineTo(size.width * 0.1858475, size.height * 0.07393831);
    path.arcToPoint(Offset(size.width * 0.1221152, size.height),
        radius:
        Radius.elliptical(size.width * 0.1221152, size.height * 0.5000447),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path.arcToPoint(Offset(size.width * 0.1858475, size.height * 0.9265087),
        radius:
        Radius.elliptical(size.width * 0.1213292, size.height * 0.4968261),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.lineTo(size.width * 0.1858475, size.height * 0.9265087);
    path.cubicTo(
        size.width * 0.2068950,
        size.height * 0.8824318,
        size.width * 0.2298203,
        size.height * 0.7975861,
        size.width * 0.2549071,
        size.height * 0.6654448);
    path.cubicTo(
        size.width * 0.2707364,
        size.height * 0.5833706,
        size.width * 0.2936617,
        size.height * 0.5869468,
        size.width * 0.3087269,
        size.height * 0.6526598);
    path.lineTo(size.width * 0.3433113, size.height * 0.8046491);
    path.lineTo(size.width * 0.3433113, size.height * 0.8046491);
    path.arcToPoint(Offset(size.width * 0.4401651, size.height * 1.000268),
        radius:
        Radius.elliptical(size.width * 0.1218532, size.height * 0.4989718),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.lineTo(size.width * 0.8778848, size.height * 1);
    path.arcToPoint(Offset(size.width * 0.9999782, size.height * 0.5000447),
        radius:
        Radius.elliptical(size.width * 0.1220934, size.height * 0.4999553),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.lineTo(size.width * 1, size.height * 0.5000447);
    path.arcToPoint(Offset(size.width * 0.8778848, 0),
        radius:
        Radius.elliptical(size.width * 0.1221152, size.height * 0.5000447),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}