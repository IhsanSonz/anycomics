part of 'models.dart';

class ComicModel {
  ComicModel({
    required this.title,
    required this.cover,
    this.description,
    this.author,
    this.studio,
    this.chapters = const [],
  });

  String title;
  String cover;
  String? description;
  String? author;
  String? studio;
  List<ChapterModel> chapters;
}
