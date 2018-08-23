import 'package:flutter/material.dart';
import 'package:memoir/app/ui/widget/confirm.widget.dart';
import 'package:memoir/framework/res/dimens.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';
import 'package:memoir/framework/utils/global.dart';

class UpdateCover extends StatelessWidget {
  final String storyImage;

  const UpdateCover({Key key, this.storyImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Confirm(
      heightFactor: 0.7,
      onConfirm: () {},
      child: Column(
        children: <Widget>[
          Flexible(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: SizedBox.expand(
                    child: ImageWidget(imageUrl: storyImage),
                  ),
                ),
                SizedBox(
                  width: Global.kScreenWidth * 0.7,
                  height: 48.0,
                  child: RaisedButton(
                    elevation: kElevationBig,
                    color: Theme.of(context).buttonColor,
                    textColor: Colors.white,
                    onPressed: () {},
                    shape: StadiumBorder(),
                    child: Text('UPLOAD NEW COVER'),
                  ),
                ),
              ],
            ),
          ),
          SPACE_BIG,
          Text('OR CHOOSE FROM YOUR DAILY IMAGES'),
          SPACE_BIG,
        ],
      ),
    );
  }
}
