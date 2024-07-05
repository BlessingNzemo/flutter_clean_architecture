

import '../models/Courrier.dart';
import '../service/CourrierService.dart';

class RecupererListeCouriersUseCase{

  CourrierService service;

  RecupererListeCouriersUseCase(this.service);

  Future<List<Courrier>> run() async{
   return await service.recupererListeCourierEnAttenteDeValidation();
  }


}