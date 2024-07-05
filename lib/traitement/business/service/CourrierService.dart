
import '../models/Courrier.dart';
import '../models/ValidateCourier.dart';

abstract class CourrierService {
  Future<List<Courrier>> recupererListeCourierEnAttenteDeValidation();

  Future<dynamic> validerCourrier(ValidateCourier data);
}
