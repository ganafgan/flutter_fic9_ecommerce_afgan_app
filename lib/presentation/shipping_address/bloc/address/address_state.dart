part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  
  /* Add Address*/
  const factory AddressState.addLoading() = _AddLoading;
  const factory AddressState.addError(String error) = _AddError;
  const factory AddressState.addSuccess(AddAddressResponseModel response) = _AddSuccess;

  /* Get Address */
  const factory AddressState.getLoading() = _GetLoading;
  const factory AddressState.getError(String error) = _GetError;
  const factory AddressState.getSuccess(GetAddressResponseModel response) = _GetSuccess;
}
