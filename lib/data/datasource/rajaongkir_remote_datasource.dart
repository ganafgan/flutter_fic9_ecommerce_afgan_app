import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/data/model/responses/province_response_model.dart';
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
}
