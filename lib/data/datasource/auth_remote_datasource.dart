import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/data/model/requests/login_request_model.dart';
import 'package:flutter_ecommerce/data/model/requests/register_request_model.dart';
import 'package:flutter_ecommerce/data/model/responses/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel data) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    final uri = Uri.parse('${Variables.baseUrl}api/auth/local/register');
    final response = await http.post(
      uri,
      body: data.toJson(),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return right(AuthResponseModel.fromJson(response.body));
    } else {
      return left('Server error');
    }
  }

  Future<Either<String, AuthResponseModel>> login(
      LoginRequestModel data) async {
    final headers = {
      'Content-Type': 'application/json',
    };
    final uri = Uri.parse('${Variables.baseUrl}api/auth/local');
    final response = await http.post(
      uri,
      body: data.toJson(),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return right(AuthResponseModel.fromJson(response.body));
    } else {
      return left('Server error');
    }
  }
}
