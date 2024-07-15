import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projet_x/traitement/ui/framework/CourierServiceFake.dart';
import 'package:projet_x/traitement/ui/pages/couriersEnAttente/CouriersEnAttentePage.dart';

import 'traitement/business/interactors/courrierInteractor.dart';
import 'traitement/ui/framework/CourierServiceNetwork.dart';

void main() {
  // declarer implementation
  var courierService = CourierServiceNetwork();
  //declarer l'interactor
  var courierInteractor = Courrierinteractor.build(courierService);

  runApp(ProviderScope(
    overrides:[
      courierInteractorProvider.overrideWithValue(courierInteractor),
    ],
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesco',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: Couriersenattentepage(),
    );
  }
}
