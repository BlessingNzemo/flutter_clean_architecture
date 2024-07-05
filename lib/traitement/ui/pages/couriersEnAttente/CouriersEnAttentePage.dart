import 'package:flutter/material.dart';

import '../../../business/interactors/courrierInteractor.dart';
import '../../../business/models/Courrier.dart';

class CouriersEnAttentePage extends StatefulWidget {
  Courrierinteractor? courrierInteractor;

  CouriersEnAttentePage({super.key, this.courrierInteractor});

  @override
  State<CouriersEnAttentePage> createState() => _CouriersEnAttentePageState();
}

class _CouriersEnAttentePageState extends State<CouriersEnAttentePage> {
  List<Courrier> data = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var usecase = widget.courrierInteractor?.recupererListeCouriersUseCase;
      var res = await usecase?.run();
      if (res != null) {
        data = res;
        print("data: $data");
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Taille de la liste: ${data.length}"),
      ),
    );
  }
}
