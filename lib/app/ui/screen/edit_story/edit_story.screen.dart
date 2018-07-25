import 'package:flutter/material.dart';
import 'package:memoir/app/bloc/story_bloc.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/screen/edit_story/background.widget.dart';
import 'package:memoir/app/ui/widget/close.widget.dart';
import 'package:memoir/app/ui/screen/edit_story/content.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/ui/debounce_text_field.widget.dart';
import 'package:memoir/framework/utils.dart';

class EditStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          ListView(
            children: <Widget>[
              DebounceTextField(
                style: Theme.of(context).textTheme.display3,
                onChanged: (text) {
                  bloc.newStory.add(bloc.newStory.latest..title = text);
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: space_big),
                  hintStyle: Theme.of(context).textTheme.display3,
                  hintText: '标题',
                  border: InputBorder.none,
                ),
              ),
              DebounceTextField(
                onChanged: (text) {
                  bloc.newStory.add(bloc.newStory.latest..storyDate = text);
                },
                decoration: InputDecoration(
                  labelText: '时间',
                  filled: true,
                  hintText: '时间',
                  counterText: '0 / 1250',
                ),
              ),
              DebounceTextField(
                onChanged: (text) {
                  bloc.newStory.add(bloc.newStory.latest..hero = text);
                },
                decoration: InputDecoration(
                  labelText: '人物',
                  filled: true,
                  hintText: '人物',
                  counterText: '0 / 1250',
                ),
              ),
              DebounceTextField(
                onChanged: (text) {
                  bloc.newStory.add(bloc.newStory.latest..storyContent = text);
                },
                maxLines: null,
                decoration: InputDecoration(
                  labelText: '事件',
                  filled: true,
                  hintText: '事件',
                  counterText: '0 / 1250',
                ),
              ),
              SPACE_BIG,
              _Save(),
            ],
          ),
          Close(color: Colors.grey),
        ],
      ),
    );
  }
}

///
/// 保存按钮
///
class _Save extends StatelessWidget {
  const _Save({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: space_big),
      onPressed: () {
        try {
          bloc.performAddStory();
        } catch (e) {
          showMessage(context, e.toString());
        }
      },
      color: Colors.greenAccent,
      child: Text(
        '保存',
        style:
            Theme.of(context).textTheme.subhead.copyWith(color: Colors.white),
      ),
    );
  }
}
