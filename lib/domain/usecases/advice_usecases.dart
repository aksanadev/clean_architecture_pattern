import 'package:clean_architecture_pattern/domain/entities/advice_entity.dart';

class AdviceUsecases {
  Future<AdviceEntity> getAdvice() async {
    //call repository to get data (failure or data)
    //proceed with business login (manipulate the data)
    await Future.delayed(const Duration(seconds: 3), () {});
    return const AdviceEntity(advice: 'Stay LiT for Him!', id: 1);
  }
}
