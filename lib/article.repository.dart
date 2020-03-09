import 'package:dio/dio.dart';

class ArticleRepository {
  Future<String> getArticle() async {
    try {
      Response response = await Dio().get(
          "https://raw.githubusercontent.com/balta-io/artigos/master/docker-instalaca-configuracao-primeiros-passos.md");
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}
