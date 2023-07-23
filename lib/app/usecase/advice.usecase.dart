import 'package:teste_entity/app/entity/advice.entity.dart';
import 'package:teste_entity/app/repository/advice.repository.dart';

class AdviceUseCase {

  final AdviceRepository adviceRepository;

  AdviceUseCase(this.adviceRepository);

  Future<AdviceEntity> getAdvice() async {
    final advice = await adviceRepository.getAdvice();
    return AdviceEntity(id: advice.id, advice: advice.advice);
  }
}