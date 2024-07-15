import 'package:projet_x/traitement/business/interactors/courrierInteractor.dart';
import 'package:projet_x/traitement/ui/pages/couriersEnAttente/CourierEnAttenteState.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../business/models/Courrier.dart';

part 'CouriersEnAttenteCtrl.g.dart';

@riverpod
class CouriersEnAttenteCtrl extends _$CouriersEnAttenteCtrl {
  @override
  CouriersEnAttenteState build() {
    return CouriersEnAttenteState();
  }

  void recupererData() async {
    state= state.copyWith(isLoading: true);
    var usecase =
        ref.watch(courierInteractorProvider).recupererListeCouriersUseCase;
    var res = await usecase.run();
    state= state.copyWith(isLoading: false, data: res);
    print(state.isLoading);
  }
}
