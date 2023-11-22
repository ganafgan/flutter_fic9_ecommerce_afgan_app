import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce/data/datasource/rajaongkir_remote_datasource.dart';
import 'package:flutter_ecommerce/data/model/responses/subdistrict_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subdistrict_event.dart';
part 'subdistrict_state.dart';
part 'subdistrict_bloc.freezed.dart';

class SubdistrictBloc extends Bloc<SubdistrictEvent, SubdistrictState> {
  SubdistrictBloc() : super(const _Initial()) {
    on<_GetAllByCityId>((event, emit) async {
      emit(const _Loading());
      final result =
          await RajaOngkirRemoteDatasource().getSubdistricts(event.cityId);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r.rajaongkir.results)),
      );
    });
  }
}
