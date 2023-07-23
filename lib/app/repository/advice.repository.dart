import 'package:teste_entity/app/model/advice.model.dart';

abstract class AdviceRepository {
  Future<AdviceModel> getAdvice();
}