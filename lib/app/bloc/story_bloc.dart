import 'dart:async';

import 'package:memoir/app/model/api.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/framework/framework.dart';

class StoryBloc {
  final storyList = Event<List<Story>>(isBehavior: true);

  Future<List<Story>> performFetchStoryList() {
    return Api.fetchStoryList({});
  }

  void close() {}
}
