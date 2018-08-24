import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/show_up.transition.dart';
import 'package:memoir/framework/ui/shadowed_box.widget.dart';

class Avatar extends StatelessWidget {
  final double width;
  final double height;

  const Avatar({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowedBox(
      shape: BoxShape.circle,
      width: width,
      height: height,
      shadowColor: Colors.black,
      shadowOffset: Offset(0.0, 12.0),
      spreadRadius: -12.0,
      blurRadius: 24.0,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/reflectly-face.gif'),
      ),
    );
  }
}
