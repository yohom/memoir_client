import 'dart:async';

import 'package:flutter/material.dart';
import 'package:memoir/app/bloc/bloc.dart';
import 'package:memoir/app/model/bean/page_change.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/app/ui/screen/index/stories/history_story_card.widget.dart';
import 'package:memoir/app/ui/screen/index/stories/intro.widget.dart';
import 'package:memoir/app/ui/screen/index/stories/new_story_card.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class Stories extends StatefulWidget {
  final Bloc bloc;

  const Stories({
    Key key,
    @required this.bloc,
  }) : super(key: key);

  @override
  _StoriesState createState() {
    return _StoriesState();
  }
}

class _StoriesState extends State<Stories> {
  Future<List<Story>> _storyList;

  @override
  void initState() {
    super.initState();

    _storyList = widget.bloc.storyBloc.performFetchStoryList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureWidget<List<Story>>(
        future: _storyList,
        builder: (data) => _StoryPageView(data),
      ),
    );
  }
}

///
/// Stories的具体实现
///
class _StoryPageView extends StatefulWidget {
  final List<Story> storyList;

  _StoryPageView(this.storyList);

  @override
  _StoryListState createState() => _StoryListState();
}

class _StoryListState extends State<_StoryPageView> {
  final _controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;

    // 如果是手动按了返回按钮, 让PageView滚回第一页
    bloc.pageChange
        .where((pageChange) => pageChange.triggeredByBack)
        .listen((pageChange) {
      _controller.animateToPage(
        pageChange.page,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      );
    });

    return PageView.builder(
      controller: _controller,
      onPageChanged: (page) => bloc.pageChange.add(PageChange(page)),
      itemCount: widget.storyList.length + 2,
      itemBuilder: (context, index) {
        if (index == 0) return Intro();
        return StreamWidget<PageChange>(
          // 只接受自然滑动事件
          stream: bloc.pageChange.stream.where((change) {
            return !change.triggeredByBack;
          }),
          initData: PageChange(0),
          builder: (change) {
            return AnimatedPadding(
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              padding: EdgeInsets.all(change.page == index ? 0.0 : kSpaceBig),
              child: index == 1
                  ? NewStoryCard(
                      elevation: change.page == index
                          ? kElevationBig
                          : kElevationNormal,
                    )
                  : HistoryStoryCard(
                      story: widget.storyList[index - 2],
                      elevation: change.page == index
                          ? kElevationBig
                          : kElevationNormal,
                    ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
