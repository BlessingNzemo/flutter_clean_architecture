import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projet_x/traitement/ui/pages/couriersEnAttente/CouriersEnAttenteCtrl.dart';

class Couriersenattentepage extends ConsumerStatefulWidget {
  const Couriersenattentepage({super.key});

  @override
  ConsumerState createState() => _CouriersenattentepageState();
}

class _CouriersenattentepageState extends ConsumerState<Couriersenattentepage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var ctrl = ref.read(couriersEnAttenteCtrlProvider.notifier);
      ctrl.recupererData();
    });
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(couriersEnAttenteCtrlProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {
          var ctrl = ref.read(couriersEnAttenteCtrlProvider.notifier);
          ctrl.recupererData();
        }, icon: Icon(Icons.refresh))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: state.isLoading,
            child: Center(
              child: Text(
                "Chargement en cours...",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Center(
            child: Text(
              "Taille de la liste: ${state.data.length}",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
