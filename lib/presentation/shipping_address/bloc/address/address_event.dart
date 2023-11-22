part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.started() = _Started;
  const factory AddressEvent.addAddress(AddAddressRequestModel address) = _AddAddress;
  const factory AddressEvent.getAddress() = _GetAddress;
}