import 'dart:ffi';

import 'package:clean_architech_flutter/core/common/result.dart';
import 'package:clean_architech_flutter/features/news/domain/entities/article.dart';
import 'package:clean_architech_flutter/features/news/domain/usecase/params/article_request_params.dart';

abstract class ArticlesRepository {
  //Remote Api
  Future<Result> getBreakingNewsArticles(
      ArticleRequestParams params);

  //Local api
  Future<List<Article>> getSavedArticles();

  Future<void> saveArticle(Article article);

  Future<void> removeArticle(Article article);
}
