

import 'package:projet_x/traitement/business/models/Courrier.dart';
import 'package:projet_x/traitement/business/models/ValidateCourier.dart';
import 'package:projet_x/traitement/business/service/CourrierService.dart';

class CourierServiceNetwork implements CourrierService{
  @override
  Future<List<Courrier>> recupererListeCourierEnAttenteDeValidation() {
    var data=[
      Courrier(ref: "", objet: "objet",
          expediteur: "expediteur", destinataire: "destinataire",
          type: "type", agent: "agent", etat: "etat",
          dateEmission: "DateTime.now()", dateReception: "dateReception"),
      Courrier(ref: "", objet: "objet",
          expediteur: "expediteur", destinataire: "destinataire",
          type: "type", agent: "agent", etat: "etat",
          dateEmission: "DateTime.now()", dateReception: "dateReception")
    ];
    return Future.value(data);
  }

  @override
  Future validerCourrier(ValidateCourier data) {
    // TODO: implement validerCourrier
    throw UnimplementedError();
  }

}