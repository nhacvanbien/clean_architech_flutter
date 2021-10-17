import 'package:clean_architech_flutter/features/news/data/models/breaking_new_response_model.dart';
import 'package:clean_architech_flutter/features/news/domain/entities/source.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class Article extends Equatable {
  final int id;
  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  const Article(this.id, this.source, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content, this.author);

  @override
  List<Object?> get props => [
        id,
        source,
        title,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content
      ];

  @override
  bool? get stringify => true;

  static List<Article> fromListArticleModel(BreakingNewsResponseModel model) {
    return model.articles.map((articleModel) => articleModel.toArticle()).toList();
  }
}
