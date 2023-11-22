import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce/data/datasource/rajaongkir_remote_datasource.dart';
import 'package:flutter_ecommerce/data/model/responses/city_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_bloc.freezed.dart';
part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  CityBloc() : super(const _Initial()) {
    on<_GetAllByProvinceId>((event, emit) async {
      emit(const _Loading());
      final result =
          await RajaOngkirRemoteDatasource().getCities(event.provinceId);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r.rajaongkir.results)),
      );
    });
  }
}
