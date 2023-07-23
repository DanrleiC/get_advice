// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:teste_entity/app/model/advice.model.dart';
import 'package:teste_entity/app/repository/advice.repository.dart';

class AdviceRepositoryImpl extends AdviceRepository {

  final dio = Dio();

  @override
  Future<AdviceModel> getAdvice() async{
    final response = await dio.get('https://api.adviceslip.com/advice');
    AdviceModel advice = AdviceModel.fromJson(response.data);
    return advice;
  }
  
}