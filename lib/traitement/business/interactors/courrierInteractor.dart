

import '../service/CourrierService.dart';
import 'RecupererListeCouriersUseCase.dart';
import 'ValidateCourrierUseCase.dart';

class Courrierinteractor{

  RecupererListeCouriersUseCase recupererListeCouriersUseCase;
  ValidateCourrierUseCase validateCourrierUseCase;

  Courrierinteractor._(
      this.recupererListeCouriersUseCase,
      this.validateCourrierUseCase
      );


  static Courrierinteractor build(CourrierService service  ){
    return Courrierinteractor._(
      RecupererListeCouriersUseCase(service),
      ValidateCourrierUseCase(service),
    );
  }

}