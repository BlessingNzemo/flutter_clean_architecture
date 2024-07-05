import 'package:projet_x/courriers/business/service/CourrierService.dart';

class CourrierInteractor {
  CourrierService service;

  CourrierInteractor(this.service);

  static CourrierInteractor build(CourrierService service){
    return CourrierInteractor(service);
  }
}