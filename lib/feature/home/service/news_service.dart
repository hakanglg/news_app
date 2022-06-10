import 'package:dio/dio.dart';
import 'package:news_app/feature/home/model/articles_model.dart';

import '../model/news_model.dart';

class NewsService {
  final String _baseUrl =
      "https://newsapi.org/v2/everything?q=Apple&from=2022-06-09&sortBy=popularity&apiKey=$_apiKey";
  static const String _apiKey = "f3c14c82e5a14778a744df65ded1ab82";

  late Dio _dio;

  NewsService() {
    _dio = Dio();
  }

  Future<List<Articles>?> fetchNewsArticle() async {
    try {
      final response = await _dio.get(_baseUrl);
      NewsModel newsModel = NewsModel.fromJson(response.data);
      return newsModel.articles;
    } on DioError catch (e) {
      print(e);
    }
    return null;
  }
}
