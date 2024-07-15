

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../service/CourrierService.dart';
import 'RecupererListeCouriersUseCase.dart';
import 'ValidateCourrierUseCase.dart';

part "courrierInteractor.g.dart";

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

@Riverpod(keepAlive: true)
Courrierinteractor courierInteractor(Ref ref){
   throw Exception("Non encore implementaté");
}

