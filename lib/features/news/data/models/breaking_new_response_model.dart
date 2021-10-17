import 'article_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'breaking_new_response_model.g.dart';
@JsonSerializable()
class BreakingNewsResponseModel {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;
  BreakingNewsResponseModel(this.status, this.totalResults, this.articles);

  factory BreakingNewsResponseModel.fromJson(Map<String, dynamic> json) => _$BreakingNewsResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$BreakingNewsResponseModelToJson(this);
}
