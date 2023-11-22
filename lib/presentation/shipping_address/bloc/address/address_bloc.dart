import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce/data/datasource/order_remote_datasource.dart';
import 'package:flutter_ecommerce/data/model/requests/add_address_request_model.dart';
import 'package:flutter_ecommerce/data/model/responses/add_address_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/get_address_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc() : super(const _Initial()) {
    on<_AddAddress>((event, emit) async {
      emit(const _AddLoading());
      final result = await OrderRemoteDatasource().addAddress(event.address);

      result.fold(
        (l) => emit(_AddError(l)),
        (r) => emit(_AddSuccess(r)),
      );
    });

    on<_GetAddress>((event, emit) async {
      emit(const _AddLoading());
      final result = await OrderRemoteDatasource().getAddress();

      result.fold(
        (l) => emit(_GetError(l)),
        (r) => emit(_GetSuccess(r)),
      );
    });
  }
}
