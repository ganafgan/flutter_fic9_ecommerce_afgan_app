import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce/common/constants/variables.dart';
import 'package:flutter_ecommerce/data/model/responses/products_response_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDatasource {
  Future<Either<String, ProductsResponseModel>> getAllProduct() async {
    final uri = Uri.parse('${Variables.baseUrl}/api/products?populate=*');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return right(ProductsResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }
}
