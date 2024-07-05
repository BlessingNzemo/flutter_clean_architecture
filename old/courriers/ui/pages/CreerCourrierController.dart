import 'package:projet_x/courriers/business/model/Courrier.dart';
import 'package:projet_x/courriers/ui/framework/CourrierServiceV1Impl.dart';

class CreerCourrierController {

  void creerCourrier(Courrier data) {
    var fakeData = Courrier(
        ref: data.ref,
        objet: data.objet,
        expediteur: data.expediteur,
        destinataire: data.destinataire,
        type: data.type,
        agent: data.agent,
        dateEmission: "04/07/2024",
        dateReception: "04/07/2024",
        etat: data.etat
    );

    print(fakeData.objet);
    print(fakeData.ref);
    print(fakeData.expediteur);
    print(fakeData.etat);
    print(fakeData.agent);

    var service = CourrierServiceV1Impl();
    service.creerCourrier(fakeData);
  }
}
