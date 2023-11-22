part of 'subdistrict_bloc.dart';

@freezed
class SubdistrictState with _$SubdistrictState {
  const factory SubdistrictState.initial() = _Initial;
  const factory SubdistrictState.loading() = _Loading;
  const factory SubdistrictState.error(String message) = _Error;
  const factory SubdistrictState.success(List<SubDistrict> subdistricts) = _Success;
}
