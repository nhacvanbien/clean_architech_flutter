import 'package:clean_architech_flutter/utils/constant.dart';

class ArticleRequestParams {
  final String apiKey;
  final String country;
  final String category;
  final int page;
  final int pageSize;

  ArticleRequestParams(
      {this.apiKey = kApiKey,
      this.country = 'us',
      this.category = 'general',
      this.page = 1,
      this.pageSize = 20});
}
