import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce/presentation/cart/widget/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _Success([])) {
    on<_Add>((event, emit) {
      final currentState = state as _Success;

      /* bila produk ada di cart, maka tambah */

      final index = currentState.carts
          .indexWhere((element) => element.product.id == event.cart.product.id);
      if (index >= 0) {
        currentState.carts[index].quantity += 1;
        emit(const _Loading());
        emit(_Success(currentState.carts));
      } else {
        // currentState.carts
        //     .add(CartModel(product: event.cart.product, quantity: 1));
        emit(_Success([...currentState.carts, event.cart]));
      }
    });

    on<_Remove>((event, emit) {
      final currentState = state as _Success;

      /* cara 1 */
      final List<CartModel> updateCarts = [...currentState.carts];

      /* cara 2 */
      // final List<CartModel> updateCarts = List.from(currentState.carts);

      /* bila produk ada di cart, maka di kurangi*/

      final index = currentState.carts
          .indexWhere((element) => element.product.id == event.cart.product.id);
      if (index >= 0) {
        updateCarts[index].quantity -= 1;

        if (currentState.carts[index].quantity <= 0) {
          updateCarts.removeAt(index);
        }
        emit(const _Loading());
        emit(_Success(updateCarts));
      }
    });

    on<_Delete>((event, emit) {
      final currentState = state as _Success;

      /* cara 1 */
      final List<CartModel> updateCarts = [...currentState.carts];

      /* cara 2 */
      // final List<CartModel> updateCarts = List.from(currentState.carts);

      /* bila produk ada di cart, maka di kurangi*/

      final index = currentState.carts
          .indexWhere((element) => element.product.id == event.cart.product.id);
      if (index >= 0) {
        updateCarts.removeAt(index);

        emit(const _Loading());
        emit(_Success(updateCarts));
      }
    });

    on<_Clear>((event, emit) {
      emit(const _Loading());
      emit(const _Success([]));
    });
  }
}
