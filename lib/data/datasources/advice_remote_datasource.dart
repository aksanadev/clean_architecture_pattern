
abstract class AdviceRemoteDataSource {
  /// request a random advice from api
  /// returns [AdviceModel] if successful
  /// throws a [ServerException] if statusCode != 200
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDataSourceImpl implements AdviceRemoteDataSource {
  @override
  Future<AdviceModel> getRandomAdviceFromApi() {
    throw UnimplementedError();
  }
}
