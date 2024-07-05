import '../../business/models/Courrier.dart';
import '../../business/models/ValidateCourier.dart';
import '../../business/service/CourrierService.dart';

class Courierservicefake implements CourrierService {
  @override
  Future<List<Courrier>> recupererListeCourierEnAttenteDeValidation() {
    var data=[
      Courrier(ref: "", objet: "objet",
          expediteur: "expediteur", destinataire: "destinataire",
          type: "type", agent: "agent", etat: "etat",
          dateEmission: "DateTime.now()", dateReception: "dateReception")
    ];
   return Future.value(data);
  }

  @override
  Future<dynamic> validerCourrier(ValidateCourier data) {
   return Future.value(true);
  }

}