import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce/data/datasource/order_remote_datasource.dart';
import 'package:flutter_ecommerce/data/model/requests/order_request_model.dart';
import 'package:flutter_ecommerce/data/model/responses/order_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const _Initial()) {
    on<_Order>((event, emit) async {
      emit(const _Loading());
      final response = await OrderRemoteDatasource().order(event.request);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
