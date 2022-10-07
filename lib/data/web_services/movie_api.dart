import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pwc_task/service/Strings.dart';

class MovieApi {
  late Dio dio;
  final BaseOptions baseOptions = BaseOptions(
      baseUrl: AppFixedString.baseUrl,
      connectTimeout: 60 * 10000,
      receiveTimeout: 60 * 10000,
      receiveDataWhenStatusError: true,
      sendTimeout: 408);

  Future<Map<String, dynamic>?> searchMovieByTitle(
      {required String title, String? year}) async {
    Map<String, String> _parameters = {
      'apikey': AppFixedString.keyOMDB,
      's': title,
    };
    if (year != null) {
      _parameters['y'] = year;
    }
    dio = Dio(baseOptions);
    try {
      var response = await dio.get('', queryParameters: _parameters);

      return response.data;
    } catch (e) {
      print("Erorr log ${e.toString()}");
      return null;
    }
  }
}
