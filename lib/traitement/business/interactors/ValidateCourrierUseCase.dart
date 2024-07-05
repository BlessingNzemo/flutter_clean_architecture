import '../models/Courrier.dart';
import '../models/ValidateCourier.dart';
import '../service/CourrierService.dart';

class ValidateCourrierUseCase {
  CourrierService service;

  ValidateCourrierUseCase(this.service);

  Future<dynamic> run(ValidateCourier data) async {
    return await service.validerCourrier(data);
  }
}
