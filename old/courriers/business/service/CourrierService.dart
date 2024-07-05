import 'package:projet_x/courriers/business/model/Courrier.dart';

abstract class CourrierService{
  void creerCourrier(Courrier data);
  void modifierCourrier(int id, Courrier data);
  void recupererInfoCourrier(int id);
  void listerCourrier();
  void envoyerCourrier(int id, int etat);
  void soumettreCourrier(int id, int etat);
  void traiterCourrier(int id, int etat);
  void archiverCourrier(int id, int etat);
}