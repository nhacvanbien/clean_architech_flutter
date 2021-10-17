import 'package:clean_architech_flutter/core/common/result.dart';
import 'package:clean_architech_flutter/core/domain/repositories/base_repository.dart';
import 'package:clean_architech_flutter/features/news/data/datasources/remote/news_api_service.dart';
import 'package:clean_architech_flutter/features/news/data/models/breaking_new_response_model.dart';
import 'package:clean_architech_flutter/features/news/domain/entities/article.dart';
import 'package:clean_architech_flutter/features/news/domain/repositories/articles_repository.dart';
import 'package:clean_architech_flutter/features/news/domain/usecase/params/article_request_params.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class ArticlesRepositoryImpl extends BaseRepository
    implements ArticlesRepository {
  final NewApiService _newApiService;

  ArticlesRepositoryImpl(this._newApiService);

  @override
  Future<Result<List<Article>>> getBreakingNewsArticles(
      ArticleRequestParams params) async {
    return apiCall(
        _newApiService.getBreakingNewsArticles(
            apiKey: params.apiKey,
            country: params.country,
            category: params.category,
            page: params.page,
            pageSize: params.pageSize),
        mapper: (listArticleModel) =>
            Article.fromListArticleModel(listArticleModel));
  }

  @override
  Future<List<Article>> getSavedArticles() {
    throw UnimplementedError();
  }

  @override
  Future<void> removeArticle(Article article) {
    throw UnimplementedError();
  }

  @override
  Future<void> saveArticle(Article article) {
    throw UnimplementedError();
  }
}
