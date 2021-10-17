// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breaking_new_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreakingNewsResponseModel _$BreakingNewsResponseModelFromJson(
        Map<String, dynamic> json) =>
    BreakingNewsResponseModel(
      json['status'] as String,
      json['totalResults'] as int,
      (json['articles'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BreakingNewsResponseModelToJson(
        BreakingNewsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
