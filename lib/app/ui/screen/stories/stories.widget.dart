import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/framework/framework.dart';

class Stories extends StatefulWidget {
  @override
  StoriesState createState() {
    return StoriesState();
  }
}

class StoriesState extends State<Stories> {
  final _controller = PageController(viewportFraction: 0.8);

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
            builder: (data) {
              return PageView.builder(
                controller: _controller,
                itemCount: data.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) return Index();
                  return StoryCard(story: data[index]);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

///
/// Page的第一页
///
class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '自传',
          style: Theme.of(context).textTheme.display3,
        ),
        SizedBox(width: 100.0, child: Divider(height: space_huge)),
        Text('标签'),
        Text('# 最爱'),
      ],
    );
  }
}

///
/// Story对应的Card
///
class StoryCard extends StatelessWidget {
  final Story story;

  StoryCard({
    Key key,
    @required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pinkAccent,
      elevation: 8.0,
      margin: EdgeInsets.only(bottom: space_huge, right: space_normal),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox.expand(child: ImageWidget(imageUrl: story.storyImage)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add, color: Colors.white, size: 100.0),
              Text('撰写史料', style: TextStyle(color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
