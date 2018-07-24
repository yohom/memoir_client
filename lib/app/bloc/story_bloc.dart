import 'dart:async';

import 'package:memoir/app/model/api.dart';
import 'package:memoir/app/model/bean/page_change.dart';
import 'package:memoir/app/model/bean/story.dart';
import 'package:memoir/framework/utils.dart';

class StoryBloc {
  ///
  /// story列表
  ///
  final storyList = Event<List<Story>>(isBehavior: true);

  ///
  /// page切换事件
  /// int泛型代表当前是第几页, bool表示是否是按了回到第一页的按钮
  ///
  final pageChange = Event<PageChange>(isBehavior: true);

  Future<List<Story>> performFetchStoryList() {
    return Api.fetchStoryList({});
  }

  void close() {
    storyList.close();
    pageChange.close();
  }
}
