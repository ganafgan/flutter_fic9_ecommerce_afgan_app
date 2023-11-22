import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce/data/model/responses/cost_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_event.dart';
part 'cost_state.dart';
part 'cost_bloc.freezed.dart';

class CostBloc extends Bloc<CostEvent, CostState> {
  CostBloc() : super(_Initial()) {
    on<CostEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
