import 'package:flutter_ecommerce/common/constants/images.dart';
import 'package:flutter_ecommerce/common/extensions/int_ext.dart';

class ProductModel {
  final List<String> images;
  final String name;
  final int price;

  ProductModel({
    required this.images,
    required this.name,
    required this.price,
  });

  String get priceFormat => price.currencyFormatRp;
}

List<ProductModel> productdata = [
  ProductModel(
    images: [Images.product1],
    name: 'Tas Kekinian',
    price: 150000,
  ),
  ProductModel(
    images: [Images.product2],
    name: 'Earphone',
    price: 250000,
  ),
  ProductModel(
    images: [Images.product3],
    name: 'Sepatu Pria',
    price: 450000,
  ),
  ProductModel(
    images: [Images.product4],
    name: 'Earphone',
    price: 350000,
  ),
];
