

import '../../ui/framework/CourierServiceFake.dart';
import '../models/Courrier.dart';
import '../service/CourrierService.dart';

class RecupererListeCouriersUseCase{

  CourrierService service;

  RecupererListeCouriersUseCase(this.service);

  Future<List<Courrier>> run() async{
   return await service.recupererListeCourierEnAttenteDeValidation();
  }
}

void main() async {
  var service=Courierservicefake();
  var usecase=RecupererListeCouriersUseCase(service);
  var res=await usecase.run();
  print(res);

}
