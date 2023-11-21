import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/domain/mensWear.dart';
import 'package:voguevilla/infrastucture/Iauthfacad/iauthfacad.dart';

class Api implements IauthFacad {
  @override
  Future<List<MensWear>> getMensWearApi() async {
    final response = await Dio()
        .get("https://fakestoreapi.com/products/category/men's%20clothing");

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data =
          (response.data as List).map((e) => MensWear.fromJson(e)).toList();
      print(data);
      return data;
    } else {
      throw Exception();
    }
  }
}

final apiprovider = Provider<Api>((ref) => Api());

final futureapiprovider = FutureProvider<List<MensWear>>((ref) async {
  return ref.watch(apiprovider).getMensWearApi();
});
