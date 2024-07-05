import 'dart:convert';

Courrier courrierFromMap(String str) => Courrier.fromMap(json.decode(str));

String courrierToMap(Courrier data) => json.encode(data.toMap());

class Courrier {
  int? id;
  String ref;
  String objet;
  String expediteur;
  String destinataire;
  String type;
  String agent;
  String etat;
  String dateEmission;
  String dateReception;

  Courrier({
    this.id,
    required this.ref,
    required this.objet,
    required this.expediteur,
    required this.destinataire,
    required this.type,
    required this.agent,
    required this.etat,
    required this.dateEmission,
    required this.dateReception
  });

  factory Courrier.fromMap(Map<String, dynamic> json) => Courrier(
    id: json["id"],
    ref: json["ref"],
    objet: json["objet"],
    expediteur: json["expediteur"],
    destinataire: json["destinataire"],
    type: json["type_id"],
    agent: json["user_id"],
    etat: json["etat_id"],
    dateEmission: json["date_emis"],
    dateReception: json["date_recu"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "ref": ref,
    "objet": objet,
    "expediteur": expediteur,
    "destinataire": destinataire,
    "type_id": type,
    "user_id": agent,
    "etat_id": etat,
    "date_emis": dateEmission,
    "date_recu": dateReception,
  };
}