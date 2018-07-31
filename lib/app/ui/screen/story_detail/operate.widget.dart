import 'package:flutter/material.dart';
import 'package:memoir/app/ui/animation/fade_slide.transition.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';
import 'package:rxdart/rxdart.dart';

///
/// 操作们
///
class OperateGroup extends StatelessWidget {
  const OperateGroup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FadeSlideTransition(
            direction: SlideDirection.horizontal,
            originOffset: Offset(-100.0, 0.0),
            builder: (_, __) {
              return Operate(
                iconData: Icons.arrow_downward,
                onTap: () => Router.pop(context),
                margin: EdgeInsets.only(left: space_big, top: space_big),
              );
            },
          ),
          Column(
            children: <Widget>[
              FadeSlideTransition(
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
                          bloc.showMoreOperate
                              .add(!bloc.showMoreOperate.latest);
                        },
                        margin: EdgeInsets.only(
                          right: space_big,
                          top: space_big,
                        ),
                      );
                    },
                  );
                },
              ),
              FadeSlideTransition(
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
                        onTap: () {},
                        margin: EdgeInsets.only(
                          right: space_big,
                          top: space_big,
                        ),
                      );
                    },
                  );
                },
              ),
              FadeSlideTransition(
                direction: SlideDirection.horizontal,
                immediately: false,
                originOffset: Offset(100.0, 0.0),
                builder: (_, controller) {
                  return StreamBuilder<bool>(
                    stream: bloc.showMoreOperate.stream,
                    initialData: false,
                    builder: (_, ss) {
                      Observable.timer(null, Duration(milliseconds: 200))
                          .listen((_) => ss.data
                              ? controller.forward()
                              : controller.reverse());
                      return Operate(
                        iconData: Icons.image,
                        onTap: () {},
                        margin: EdgeInsets.only(
                          right: space_big,
                          top: space_big,
                        ),
                      );
                    },
                  );
                },
              ),
              FadeSlideTransition(
                direction: SlideDirection.horizontal,
                immediately: false,
                originOffset: Offset(100.0, 0.0),
                builder: (_, controller) {
                  return StreamBuilder<bool>(
                    stream: bloc.showMoreOperate.stream,
                    initialData: false,
                    builder: (_, ss) {
                      Observable.timer(null, Duration(milliseconds: 400))
                          .listen((_) => ss.data
                              ? controller.forward()
                              : controller.reverse());
                      return Operate(
                        iconData: Icons.delete,
                        onTap: () {},
                        margin: EdgeInsets.only(
                          right: space_big,
                          top: space_big,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Operate extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;

  final EdgeInsets margin;

  const Operate({
    Key key,
    @required this.iconData,
    @required this.onTap,
    @required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: margin,
        elevation: elevation_normal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(space_normal),
          child: Icon(iconData),
        ),
      ),
    );
  }
}
