import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:flutter_ecommerce/data/model/requests/add_address_request_model.dart';
import 'package:flutter_ecommerce/data/model/requests/order_request_model.dart';
import 'package:flutter_ecommerce/data/model/responses/add_address_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/get_address_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/order_detail_response_model.dart';
import 'package:flutter_ecommerce/data/model/responses/order_response_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<Either<String, OrderResponseModel>> order(
      OrderRequestModel request) async {
    final token = await AuthLocalDatasource().getToken();
    final uri = Uri.parse('${Variables.baseUrl}/api/orders');

    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return right(OrderResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }

  Future<Either<String, OrderDetailResponseModel>> getOrderById(
      String id) async {
    final token = await AuthLocalDatasource().getToken();
    final uri = Uri.parse('${Variables.baseUrl}/api/orders/$id');
    final response = await http.get(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return right(OrderDetailResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }

  /* Add Address */
  Future<Either<String, AddAddressResponseModel>> addAddress(
      AddAddressRequestModel address) async {
    final token = await AuthLocalDatasource().getToken();
    final uri = Uri.parse('${Variables.baseUrl}/api/addresses');
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: address.toJson(),
    );

    if (response.statusCode == 200) {
      return right(AddAddressResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }

  /* Get Address by id */
  Future<Either<String, GetAddressResponseModel>> getAddress() async {
    final token = await AuthLocalDatasource().getToken();
    final user = await AuthLocalDatasource().getUser();
    final uri = Uri.parse(
        '${Variables.baseUrl}/api/addresses?filters[user_id][\$eq]=${user.id}');
    final response = await http.get(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return right(GetAddressResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }
}
