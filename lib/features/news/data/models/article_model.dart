import 'package:clean_architech_flutter/features/news/data/models/source_model.dart';
import 'package:clean_architech_flutter/features/news/domain/entities/article.dart';
import 'package:json_annotation/json_annotation.dart';
part 'article_model.g.dart';
@JsonSerializable()
class ArticleModel {
  final int? id;
  final SourceModel? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  ArticleModel(this.id, this.source, this.author, this.title, this.description,
      this.url, this.urlToImage, this.publishedAt, this.content);

  Article toArticle() {
    return Article(id??0, source!.toSourceEntity(), title??"", description??"", url??"",
        urlToImage??"", publishedAt??"", content??"", author??"");
  }

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
