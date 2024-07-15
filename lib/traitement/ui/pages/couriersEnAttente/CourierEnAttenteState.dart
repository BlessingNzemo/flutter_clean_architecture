import 'package:projet_x/traitement/business/models/Courrier.dart';

class CouriersEnAttenteState {
  bool isLoading = false;
  List<Courrier> data= [];

  CouriersEnAttenteState({
    this.isLoading= false,
    this.data= const [],
  });

  CouriersEnAttenteState copyWith({
    bool? isLoading,
    List<Courrier>? data,
  }) =>
      CouriersEnAttenteState(
        isLoading: isLoading ?? this.isLoading,
        data: data ?? this.data,
      );
}
