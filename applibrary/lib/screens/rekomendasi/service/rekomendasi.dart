import 'dart:convert';


import 'package:applibrary/screens/rekomendasi/constants/api.dart';
import 'package:applibrary/screens/rekomendasi/models/open_ai.dart';
import 'package:applibrary/screens/rekomendasi/models/usage.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;


class RecommendationService {
  static Future<GPTData> getRecommendation({
    required String hpRegion,
    required String budget,
  }) async {
    late GPTData gptData = GPTData(
      id: "",
      object: "",
      created: 0,
      model: "",
      choices: [],
      usage: UsageData(
        promptToken: 0,
        completionToken: 0,
        totalTokens: 0,
      ),
    );

    try {
      var url = Uri.parse("https://api.openai.com/v1/completions");

      Map<String, String> headers = {
        "Content-Type": "application/json",
        "Charset": "utf-8",
        "Authorization": "Bearer $apiKey",
      };

      final formatCurrency = NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'Rp. ',
        decimalDigits: 0,
      );

      String hpBudget = formatCurrency.format(int.parse(budget));

      String promptData = "Kamu adalah seorang ahli buku, berikan saya beberapa rekomendasi buku yang bagus untuk di baca dari negara $hpRegion dengan budget kurang lebih $hpBudget";

      final data = jsonEncode({
        "model": "text-davinci-003",
        "prompt": promptData,
        "max_tokens": 200,
        "temperature": 0.7,
        "top_p": 1,
        "frequency_penalty": 0,
        "presence_penalty": 0,
      });

      var response = await http.post(
        url,
        headers: headers,
        body: data,
      );

      if (response.statusCode == 200) {
        gptData = gptDataFromJson(response.body);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }

    return gptData;
  }
}