// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddAddressRequestModel address) addAddress,
    required TResult Function() getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddAddressRequestModel address)? addAddress,
    TResult? Function()? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddAddressRequestModel address)? addAddress,
    TResult Function()? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AddressEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddAddressRequestModel address) addAddress,
    required TResult Function() getAddress,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddAddressRequestModel address)? addAddress,
    TResult? Function()? getAddress,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddAddressRequestModel address)? addAddress,
    TResult Function()? getAddress,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddressEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddAddressImplCopyWith<$Res> {
  factory _$$AddAddressImplCopyWith(
          _$AddAddressImpl value, $Res Function(_$AddAddressImpl) then) =
      __$$AddAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddAddressRequestModel address});
}

/// @nodoc
class __$$AddAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddAddressImpl>
    implements _$$AddAddressImplCopyWith<$Res> {
  __$$AddAddressImplCopyWithImpl(
      _$AddAddressImpl _value, $Res Function(_$AddAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddAddressImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddAddressRequestModel,
    ));
  }
}

/// @nodoc

class _$AddAddressImpl implements _AddAddress {
  const _$AddAddressImpl(this.address);

  @override
  final AddAddressRequestModel address;

  @override
  String toString() {
    return 'AddressEvent.addAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      __$$AddAddressImplCopyWithImpl<_$AddAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddAddressRequestModel address) addAddress,
    required TResult Function() getAddress,
  }) {
    return addAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddAddressRequestModel address)? addAddress,
    TResult? Function()? getAddress,
  }) {
    return addAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddAddressRequestModel address)? addAddress,
    TResult Function()? getAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class _AddAddress implements AddressEvent {
  const factory _AddAddress(final AddAddressRequestModel address) =
      _$AddAddressImpl;

  AddAddressRequestModel get address;
  @JsonKey(ignore: true)
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressImplCopyWith<$Res> {
  factory _$$GetAddressImplCopyWith(
          _$GetAddressImpl value, $Res Function(_$GetAddressImpl) then) =
      __$$GetAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$GetAddressImpl>
    implements _$$GetAddressImplCopyWith<$Res> {
  __$$GetAddressImplCopyWithImpl(
      _$GetAddressImpl _value, $Res Function(_$GetAddressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAddressImpl implements _GetAddress {
  const _$GetAddressImpl();

  @override
  String toString() {
    return 'AddressEvent.getAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddAddressRequestModel address) addAddress,
    required TResult Function() getAddress,
  }) {
    return getAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddAddressRequestModel address)? addAddress,
    TResult? Function()? getAddress,
  }) {
    return getAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddAddressRequestModel address)? addAddress,
    TResult Function()? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddress implements AddressEvent {
  const factory _GetAddress() = _$GetAddressImpl;
}

/// @nodoc
mixin _$AddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddressState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddressState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddLoadingImplCopyWith<$Res> {
  factory _$$AddLoadingImplCopyWith(
          _$AddLoadingImpl value, $Res Function(_$AddLoadingImpl) then) =
      __$$AddLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddLoadingImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddLoadingImpl>
    implements _$$AddLoadingImplCopyWith<$Res> {
  __$$AddLoadingImplCopyWithImpl(
      _$AddLoadingImpl _value, $Res Function(_$AddLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddLoadingImpl implements _AddLoading {
  const _$AddLoadingImpl();

  @override
  String toString() {
    return 'AddressState.addLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) {
    return addLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) {
    return addLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) {
    if (addLoading != null) {
      return addLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) {
    return addLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) {
    return addLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) {
    if (addLoading != null) {
      return addLoading(this);
    }
    return orElse();
  }
}

abstract class _AddLoading implements AddressState {
  const factory _AddLoading() = _$AddLoadingImpl;
}

/// @nodoc
abstract class _$$AddErrorImplCopyWith<$Res> {
  factory _$$AddErrorImplCopyWith(
          _$AddErrorImpl value, $Res Function(_$AddErrorImpl) then) =
      __$$AddErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddErrorImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddErrorImpl>
    implements _$$AddErrorImplCopyWith<$Res> {
  __$$AddErrorImplCopyWithImpl(
      _$AddErrorImpl _value, $Res Function(_$AddErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddErrorImpl implements _AddError {
  const _$AddErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AddressState.addError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddErrorImplCopyWith<_$AddErrorImpl> get copyWith =>
      __$$AddErrorImplCopyWithImpl<_$AddErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) {
    return addError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) {
    return addError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) {
    return addError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) {
    return addError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(this);
    }
    return orElse();
  }
}

abstract class _AddError implements AddressState {
  const factory _AddError(final String error) = _$AddErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AddErrorImplCopyWith<_$AddErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSuccessImplCopyWith<$Res> {
  factory _$$AddSuccessImplCopyWith(
          _$AddSuccessImpl value, $Res Function(_$AddSuccessImpl) then) =
      __$$AddSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddAddressResponseModel response});
}

/// @nodoc
class __$$AddSuccessImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddSuccessImpl>
    implements _$$AddSuccessImplCopyWith<$Res> {
  __$$AddSuccessImplCopyWithImpl(
      _$AddSuccessImpl _value, $Res Function(_$AddSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$AddSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AddAddressResponseModel,
    ));
  }
}

/// @nodoc

class _$AddSuccessImpl implements _AddSuccess {
  const _$AddSuccessImpl(this.response);

  @override
  final AddAddressResponseModel response;

  @override
  String toString() {
    return 'AddressState.addSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSuccessImplCopyWith<_$AddSuccessImpl> get copyWith =>
      __$$AddSuccessImplCopyWithImpl<_$AddSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) {
    return addSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) {
    return addSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements AddressState {
  const factory _AddSuccess(final AddAddressResponseModel response) =
      _$AddSuccessImpl;

  AddAddressResponseModel get response;
  @JsonKey(ignore: true)
  _$$AddSuccessImplCopyWith<_$AddSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLoadingImplCopyWith<$Res> {
  factory _$$GetLoadingImplCopyWith(
          _$GetLoadingImpl value, $Res Function(_$GetLoadingImpl) then) =
      __$$GetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLoadingImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$GetLoadingImpl>
    implements _$$GetLoadingImplCopyWith<$Res> {
  __$$GetLoadingImplCopyWithImpl(
      _$GetLoadingImpl _value, $Res Function(_$GetLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLoadingImpl implements _GetLoading {
  const _$GetLoadingImpl();

  @override
  String toString() {
    return 'AddressState.getLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) {
    return getLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) {
    return getLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) {
    if (getLoading != null) {
      return getLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) {
    return getLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) {
    return getLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) {
    if (getLoading != null) {
      return getLoading(this);
    }
    return orElse();
  }
}

abstract class _GetLoading implements AddressState {
  const factory _GetLoading() = _$GetLoadingImpl;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$GetErrorImpl>
    implements _$$GetErrorImplCopyWith<$Res> {
  __$$GetErrorImplCopyWithImpl(
      _$GetErrorImpl _value, $Res Function(_$GetErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements _GetError {
  const _$GetErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AddressState.getError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      __$$GetErrorImplCopyWithImpl<_$GetErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) {
    return getError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) {
    return getError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class _GetError implements AddressState {
  const factory _GetError(final String error) = _$GetErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSuccessImplCopyWith<$Res> {
  factory _$$GetSuccessImplCopyWith(
          _$GetSuccessImpl value, $Res Function(_$GetSuccessImpl) then) =
      __$$GetSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAddressResponseModel response});
}

/// @nodoc
class __$$GetSuccessImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$GetSuccessImpl>
    implements _$$GetSuccessImplCopyWith<$Res> {
  __$$GetSuccessImplCopyWithImpl(
      _$GetSuccessImpl _value, $Res Function(_$GetSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$GetSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as GetAddressResponseModel,
    ));
  }
}

/// @nodoc

class _$GetSuccessImpl implements _GetSuccess {
  const _$GetSuccessImpl(this.response);

  @override
  final GetAddressResponseModel response;

  @override
  String toString() {
    return 'AddressState.getSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuccessImplCopyWith<_$GetSuccessImpl> get copyWith =>
      __$$GetSuccessImplCopyWithImpl<_$GetSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addLoading,
    required TResult Function(String error) addError,
    required TResult Function(AddAddressResponseModel response) addSuccess,
    required TResult Function() getLoading,
    required TResult Function(String error) getError,
    required TResult Function(GetAddressResponseModel response) getSuccess,
  }) {
    return getSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addLoading,
    TResult? Function(String error)? addError,
    TResult? Function(AddAddressResponseModel response)? addSuccess,
    TResult? Function()? getLoading,
    TResult? Function(String error)? getError,
    TResult? Function(GetAddressResponseModel response)? getSuccess,
  }) {
    return getSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addLoading,
    TResult Function(String error)? addError,
    TResult Function(AddAddressResponseModel response)? addSuccess,
    TResult Function()? getLoading,
    TResult Function(String error)? getError,
    TResult Function(GetAddressResponseModel response)? getSuccess,
    required TResult orElse(),
  }) {
    if (getSuccess != null) {
      return getSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddLoading value) addLoading,
    required TResult Function(_AddError value) addError,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_GetLoading value) getLoading,
    required TResult Function(_GetError value) getError,
    required TResult Function(_GetSuccess value) getSuccess,
  }) {
    return getSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddLoading value)? addLoading,
    TResult? Function(_AddError value)? addError,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_GetLoading value)? getLoading,
    TResult? Function(_GetError value)? getError,
    TResult? Function(_GetSuccess value)? getSuccess,
  }) {
    return getSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddLoading value)? addLoading,
    TResult Function(_AddError value)? addError,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_GetLoading value)? getLoading,
    TResult Function(_GetError value)? getError,
    TResult Function(_GetSuccess value)? getSuccess,
    required TResult orElse(),
  }) {
    if (getSuccess != null) {
      return getSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetSuccess implements AddressState {
  const factory _GetSuccess(final GetAddressResponseModel response) =
      _$GetSuccessImpl;

  GetAddressResponseModel get response;
  @JsonKey(ignore: true)
  _$$GetSuccessImplCopyWith<_$GetSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
