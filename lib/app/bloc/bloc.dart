import 'package:memoir/app/bloc/story_bloc.dart';

class Bloc {
  final storyBloc = StoryBloc();

  void close() {
    storyBloc.close();
  }
}
