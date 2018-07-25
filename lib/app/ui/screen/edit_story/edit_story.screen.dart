import 'package:flutter/material.dart';
import 'package:memoir/app/ui/screen/edit_story/background.widget.dart';
import 'package:memoir/app/ui/widget/close.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content.widget.dart';
import 'package:memoir/framework/res.dart';

class EditStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          ListView(
            children: <Widget>[
              TextField(
                style: Theme.of(context).textTheme.display3,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: space_big),
                  hintStyle: Theme.of(context).textTheme.display3,
                  hintText: '标题',
                  border: InputBorder.none,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: '时间',
                  filled: true,
                  hintText: '时间',
                  counterText: '0 / 1250',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: '地点',
                  filled: true,
                  hintText: '地点',
                  counterText: '0 / 1250',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: '人物',
                  filled: true,
                  hintText: '人物',
                  counterText: '0 / 1250',
                ),
              ),
              TextField(
                maxLines: null,
                decoration: InputDecoration(
                  labelText: '事件',
                  filled: true,
                  hintText: '事件',
                  counterText: '0 / 1250',
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: space_big),
                    onPressed: () {},
                    color: Colors.greenAccent,
                    child: Text(
                      '保存',
                      style: Theme
                          .of(context)
                          .textTheme
                          .subhead
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Close(color: Colors.grey),
        ],
      ),
    );
  }
}
