import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/widget.export.dart';

class AnimatedAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: SafeArea(
        child: Avatar(width: 80.0, height: 80.0),
      ),
    );
  }
}
