import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = 'today';

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtooninstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtooninstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtooninstances;
    }
    throw Error();
  }

  Future<WebtoonDetailModel> getDetailsById(int id) async {
    final url = Uri.parse('$baseUrl/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final detail = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(detail);
    }
    throw Error();
  }
}
