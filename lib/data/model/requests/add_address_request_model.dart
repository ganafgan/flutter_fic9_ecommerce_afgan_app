import 'dart:convert';

class AddAddressRequestModel {
    final Data data;

    AddAddressRequestModel({
        required this.data,
    });

    factory AddAddressRequestModel.fromJson(String str) => AddAddressRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AddAddressRequestModel.fromMap(Map<String, dynamic> json) => AddAddressRequestModel(
        data: Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "data": data.toMap(),
    };
}

class Data {
    final String name;
    final String address;
    final String phone;
    final String provId;
    final String cityId;
    final String subdistrictId;
    final String codePos;
    final String userId;
    final bool isDefault;
    final String provName;
    final String cityName;
    final String subdistrictName;

    Data({
        required this.name,
        required this.address,
        required this.phone,
        required this.provId,
        required this.cityId,
        required this.subdistrictId,
        required this.codePos,
        required this.userId,
        required this.isDefault,
        required this.provName,
        required this.cityName,
        required this.subdistrictName,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        provId: json["prov_id"],
        cityId: json["city_id"],
        subdistrictId: json["subdistrict_id"],
        codePos: json["code_pos"],
        userId: json["user_id"],
        isDefault: json["is_default"],
        provName: json["prov_name"],
        cityName: json["city_name"],
        subdistrictName: json["subdistrict_name"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "address": address,
        "phone": phone,
        "prov_id": provId,
        "city_id": cityId,
        "subdistrict_id": subdistrictId,
        "code_pos": codePos,
        "user_id": userId,
        "is_default": isDefault,
        "prov_name": provName,
        "city_name": cityName,
        "subdistrict_name": subdistrictName,
    };
}
