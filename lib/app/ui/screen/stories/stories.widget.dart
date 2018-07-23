import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/app/ui/screen/stories/index.widget.dart';
import 'package:memoir/app/ui/screen/stories/story_card.widget.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 64.0),
        child: SafeArea(
          child: StreamWidget<List<Story>>(
            stream: bloc.storyList
                .addStream(bloc.performFetchStoryList().asStream()),
            builder: (data) => _StoryPageView(data),
          ),
        ),
      ),
    );
  }
}

class _StoryPageView extends StatefulWidget {
  final List<Story> storyList;

  _StoryPageView(this.storyList);

  @override
  _StoryListState createState() => _StoryListState();
}

class _StoryListState extends State<_StoryPageView> {
  final _controller = PageController(viewportFraction: 0.8);
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      onPageChanged: (page) {
        setState(() => _currentPage = page);
      },
      itemCount: widget.storyList.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) return Index();
        return AnimatedPadding(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          padding: EdgeInsets.all(_currentPage == index ? 0.0 : space_big),
          child: StoryCard(
            story: widget.storyList[index - 1],
            elevation: _currentPage == index ? elevation_big : elevation_normal,
          ),
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
