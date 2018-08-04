import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/page_change.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/res/dimens.dart';
import 'package:memoir/app/ui/screen/stories/history_story_card.widget.dart';
import 'package:memoir/app/ui/screen/stories/index.widget.dart';
import 'package:memoir/app/ui/screen/stories/new_story_card.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';
import 'package:memoir/framework/utils.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    L.i(context.toString());

    final bloc = BlocProvider.of(context).storyBloc;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: kBottomBarHeight),
        child: SafeArea(
          child: FutureWidget<List<Story>>(
            future: bloc.storyList.addFuture(bloc.performFetchStoryList()),
            builder: (data) => _StoryPageView(data),
          ),
        ),
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
        if (index == 0) return Index();
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
              padding: EdgeInsets.all(change.page == index ? 0.0 : space_big),
              child: index == 1
                  ? NewStoryCard(
                      elevation: change.page == index
                          ? elevation_big
                          : elevation_normal,
                    )
                  : HistoryStoryCard(
                      story: widget.storyList[index - 2],
                      elevation: change.page == index
                          ? elevation_big
                          : elevation_normal,
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
