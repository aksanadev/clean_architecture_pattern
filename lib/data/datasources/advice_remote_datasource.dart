import 'dart:convert';
import 'package:clean_architecture_pattern/data/models/advice_model.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDatasource {
  /// request a random advice from api
  /// returns [AdviceModel] if successful
  /// throws a [ServerException] if statusCode != 200
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDatasource {
  final client = http.Client();
  @override
  Future<AdviceModel> getRandomAdviceFromApi() async {
    final response = await client.get(
      Uri.parse('https://api.flutter-community.com/api/v1/advice'),
      headers: {
        'content-type': 'application/json',
      },
    );
    final responseBody = json.decode(response.body);
    return AdviceModel.fromJson(responseBody);
  }
}
