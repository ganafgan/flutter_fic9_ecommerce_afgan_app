import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/data/model/responses/city_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/cost_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/province_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/subdistrict_response_model.dart';
import 'package:http/http.dart' as http;

class RajaOngkirRemoteDatasource {
  Future<Either<String, ProvinceResponseModel>> getProvinces() async {
    final uri = Uri.parse('https://pro.rajaongkir.com/api/province');

    final response = await http.get(
      uri,
      headers: {
        'key': Variables.apiKeyRajaOngkir,
      },
    );

    if (response.statusCode == 200) {
      return right(ProvinceResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }

  Future<Either<String, CityResponseModel>> getCities(String provinceId) async {
    final uri =
        Uri.parse('https://pro.rajaongkir.com/api/city?province=$provinceId');

    final response = await http.get(
      uri,
      headers: {
        'key': Variables.apiKeyRajaOngkir,
      },
    );

    if (response.statusCode == 200) {
      return right(CityResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }

  Future<Either<String, SubDistrictResponseModel>> getSubdistricts(
      String cityId) async {
    final uri =
        Uri.parse('https://pro.rajaongkir.com/api/subdistrict?city=$cityId');

    final response = await http.get(
      uri,
      headers: {
        'key': Variables.apiKeyRajaOngkir,
      },
    );

    if (response.statusCode == 200) {
      return right(SubDistrictResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }

  Future<Either<String, CostResponseModel>> getCost(
    String origin,
    String destination,
    String courier,
  ) async {
    final uri = Uri.parse('https://pro.rajaongkir.com/api/cost');

    final response = await http.post(
      uri,
      headers: {
        'key': Variables.apiKeyRajaOngkir,
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: {
        'origin': origin,
        'originType': 'subdistrict',
        'destination': destination,
        'destinationType': 'subdistrict',
        'wight': '500',
        'courier': courier,
      },
    );

    if (response.statusCode == 200) {
      return right(CostResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }
}
