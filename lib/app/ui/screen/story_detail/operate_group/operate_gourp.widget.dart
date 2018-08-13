import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/animation/fade_slide.transition.dart';
import 'package:memoir/app/ui/route/dialog.route.dart';
import 'package:memoir/app/ui/screen/edit_story/edit_story.screen.dart';
import 'package:memoir/app/ui/screen/story_detail/operate_group/operate.widget.dart';
import 'package:memoir/app/ui/screen/story_detail/operate_group/update_cover.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';
import 'package:rxdart/rxdart.dart';

/// 操作们
class OperateGroup extends StatelessWidget {
  final Story story;

  const OperateGroup({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _Exit(),
          Column(
            children: <Widget>[
              _More(),
              _Edit(),
              _UploadPicture(story: story),
              _Delete(),
            ],
          ),
        ],
      ),
    );
  }
}

/// 退出
class _Exit extends StatelessWidget {
  const _Exit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeSlideTransition(
      direction: SlideDirection.horizontal,
      originOffset: Offset(-100.0, 0.0),
      builder: (_, __) {
        return Operate(
          iconData: Icons.arrow_downward,
          onTap: () => Router.pop(context),
          margin: EdgeInsets.only(left: kSpaceBig, top: kSpaceBig),
        );
      },
    );
  }
}

/// 显示更多
class _More extends StatelessWidget {
  const _More({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return FadeSlideTransition(
      direction: SlideDirection.horizontal,
      originOffset: Offset(100.0, 0.0),
      builder: (_, __) {
        return StreamBuilder<bool>(
          stream: bloc.showMoreOperate.stream,
          initialData: false,
          builder: (_, ss) {
            return Operate(
              iconData: ss.data ? Icons.close : Icons.more_vert,
              onTap: () {
                bloc.showMoreOperate.add(!bloc.showMoreOperate.latest);
              },
              margin: EdgeInsets.only(
                right: kSpaceBig,
                top: kSpaceBig,
              ),
            );
          },
        );
      },
    );
  }
}

/// 编辑
class _Edit extends StatelessWidget {
  const _Edit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return FadeSlideTransition(
      direction: SlideDirection.horizontal,
      immediately: false,
      originOffset: Offset(100.0, 0.0),
      builder: (_, controller) {
        return StreamBuilder<bool>(
          stream: bloc.showMoreOperate.stream,
          initialData: false,
          builder: (_, ss) {
            ss.data ? controller.forward() : controller.reverse();
            return Operate(
              iconData: Icons.mode_edit,
              onTap: () {
                Router.navigate(context, EditStoryScreen());
              },
              margin: EdgeInsets.only(
                right: kSpaceBig,
                top: kSpaceBig,
              ),
            );
          },
        );
      },
    );
  }
}

/// 上传照片
class _UploadPicture extends StatelessWidget {
  final Story story;

  const _UploadPicture({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return FadeSlideTransition(
      direction: SlideDirection.horizontal,
      immediately: false,
      originOffset: Offset(100.0, 0.0),
      builder: (_, controller) {
        return StreamBuilder<bool>(
          stream: bloc.showMoreOperate.stream,
          initialData: false,
          builder: (_, ss) {
            Observable.timer(null, Duration(milliseconds: 200)).listen(
                (_) => ss.data ? controller.forward() : controller.reverse());
            return Operate(
              iconData: Icons.image,
              onTap: () {
                bloc.showMoreOperate.add(!bloc.showMoreOperate.latest);
                showLightDialog(
                  context: context,
                  builder: (context) {
                    return UpdateCover(storyImage: story.storyImage);
                  },
                );
              },
              margin: EdgeInsets.only(
                right: kSpaceBig,
                top: kSpaceBig,
              ),
            );
          },
        );
      },
    );
  }
}

/// 删除
class _Delete extends StatelessWidget {
  const _Delete({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return FadeSlideTransition(
      direction: SlideDirection.horizontal,
      immediately: false,
      originOffset: Offset(100.0, 0.0),
      builder: (_, controller) {
        return StreamBuilder<bool>(
          stream: bloc.showMoreOperate.stream,
          initialData: false,
          builder: (_, ss) {
            Observable.timer(null, Duration(milliseconds: 400)).listen(
                (_) => ss.data ? controller.forward() : controller.reverse());
            return Operate(
              iconData: Icons.delete,
              onTap: () {},
              margin: EdgeInsets.only(
                right: kSpaceBig,
                top: kSpaceBig,
              ),
            );
          },
        );
      },
    );
  }
}
