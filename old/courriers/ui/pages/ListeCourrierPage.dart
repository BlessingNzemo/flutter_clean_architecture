import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projet_x/courriers/ui/pages/CreerCourrierPage.dart';

import '../../business/model/Courrier.dart';
import 'ListeCourrierController.dart';

class ListeCourrierPage extends StatefulWidget {
  const ListeCourrierPage({super.key});

  @override
  State<ListeCourrierPage> createState() => _ListeCourrierPageState();
}

class _ListeCourrierPageState extends State<ListeCourrierPage> {
  List<Courrier> courriers = ListeCourrierController().fakeCourriers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Gesco',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(
          width: 320,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: courriers.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    //color: Colors.black26,
                    borderRadius: const BorderRadius.all(Radius.circular(2)),
                    border: Border.all(
                        width: 1,
                        color:
                        const Color.fromARGB(250, 128, 128, 128)),
                  ),
                  padding: const EdgeInsets.all(2.0),
                  margin: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Objet : ${courriers[index].objet}',
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                          ),
                        ),
                        subtitle: Text(
                          'Reference : ${courriers[index].ref}',
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              //color: Colors.black26,
                              borderRadius: const BorderRadius.all(Radius.circular(2)),
                              border: Border.all(
                                  width: 1,
                                  color:
                                  const Color.fromARGB(250, 128, 128, 128)),
                            ),
                            padding: EdgeInsets.all(2.0),
                            child: Text('Etat : ${courriers[index].etat}'),
                          ),
                          Container(
                            child: TextButton(
                                onPressed: () {
                                  print('Esimbi');
                                },
                                child: Text('Soummetre')),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CreerCourrierPage();
          }));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
