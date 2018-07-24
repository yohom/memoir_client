import 'package:memoir/framework/utils/misc.dart';

class Story {
  int id;
  String title;
  String storyContent;
  String storyImage;
  String storyDate;
  String hero;

  List<String> get formatStoryDate {
    final spiltDate = storyDate.split('-');
    final numberedMonth = spiltDate[1];
    final namedMonth = numberMonth2NamedMonth(numberedMonth);
    return List()..add(spiltDate[2])..add(namedMonth)..add(spiltDate[0]);
  }

  Story({
    this.id,
    this.title,
    this.storyContent,
    this.storyImage,
    this.storyDate,
    this.hero,
  });

  Story.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    storyContent = json['storyContent'];
    storyImage = json['storyImage'];
    storyDate = json['storyDate'];
    hero = json['hero'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['storyContent'] = this.storyContent;
    data['storyImage'] = this.storyImage;
    data['storyDate'] = this.storyDate;
    data['hero'] = this.hero;
    return data;
  }

  @override
  String toString() {
    return 'Login{id: $id, title: $title, storyContent: $storyContent, storyImage: $storyImage, storyDate: $storyDate, hero: $hero}';
  }
}
