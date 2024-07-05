import 'package:flutter/material.dart';
import 'package:projet_x/courriers/ui/pages/CreerCourrierController.dart';

import '../../business/model/Courrier.dart';

class CreerCourrierPage extends StatefulWidget {
  const CreerCourrierPage({super.key});

  @override
  State<CreerCourrierPage> createState() => _CreerCourrierPageState();
}

class _CreerCourrierPageState extends State<CreerCourrierPage> {
  var objetCrtl = TextEditingController(text: "");
  var destCrtl = TextEditingController(text: "");
  String expediteur = 'Exp 1';
  // Liste des expediteur
  var expediteurs = [
    'Exp 1',
    'Exp 2',
    'Exp 3',
    'Exp 4',
    'Exp 5',
  ];

  String agent = 'Agents 1';
  // Liste des agents
  var agents = [
    'Agents 1',
    'Agents 2',
    'Agents 3',
    'Agents 4',
    'Agents 5',
  ];

  String type = 'Type 1';
  // Liste des types de courriers
  var types = [
    'Type 1',
    'Type 2',
    'Type 3',
    'Type 4',
    'Type 5',
  ];

  String entite = 'Entite 1';
  // Liste des entités
  var entites = [
    'Entite 1',
    'Entite 2',
    'Entite 3',
    'Entite 4',
    'Entite 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Créer un courrier',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: ListView(
            children: [
              //Objet
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Objet',
                ),
                controller: objetCrtl,
              ),
              const SizedBox(
                height: 5,
              ),
              //Expediteur
              DropdownButton(
                  value: expediteur,
                  items: expediteurs.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      expediteur = newValue!;
                    });
                  }),
              const SizedBox(
                height: 5,
              ),
              //Destinataire
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Destinataire',
                ),
                controller: destCrtl,
              ),
              const SizedBox(
                height: 5,
              ),
              //Type
              DropdownButton(
                  value: type,
                  items: types.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      type = newValue!;
                    });
                  }),
              const SizedBox(
                height: 5,
              ),
              //Agents
              DropdownButton(
                  value: agent,
                  items: agents.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      agent = newValue!;
                    });
                  }),
              const SizedBox(
                height: 5,
              ),
              //dateEmission
              InputDatePickerFormField(
                fieldLabelText: 'Date d\'emission du courrier',
                  firstDate: DateTime(2020), lastDate: DateTime(2024)),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    var data = Courrier(
                        ref: '#030720240011',
                        objet: objetCrtl.toString(),
                        expediteur: expediteur,
                        destinataire: destCrtl.toString(),
                        type: type,
                        agent: agent,
                        dateEmission: '',
                        dateReception: '',
                        etat: 'Enregitrer');
                    var crtl = CreerCourrierController();
                    crtl.creerCourrier(data);
                  },
                  child: const Text('ENREGISTRER')),
            ],
          ),
        ),
      ),
    );
  }
}
