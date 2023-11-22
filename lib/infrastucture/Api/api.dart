import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/domain/CarouselApi/CarouselApi.dart';
import 'package:voguevilla/domain/mensWear.dart';
import 'package:voguevilla/infrastucture/Iauthfacad/iauthfacad.dart';

List menswear = [];

class Api implements IauthFacad {
  @override
  Future<List<MensWear>> getMensWearApi() async {
    final response = await Dio()
        .get("https://fakestoreapi.com/products/category/men's%20clothing");

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data =
          (response.data as List).map((e) => MensWear.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<MensWear>> getWomenWearApi() async {
    final response = await Dio()
        .get("https://fakestoreapi.com/products/category/women's%20clothing");
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data =
          (response.data as List).map((e) => MensWear.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<MensWear>> getJeweleryApi() async {
    final response =
        await Dio().get("https://fakestoreapi.com/products/category/jewelery");
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data =
          (response.data as List).map((e) => MensWear.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<MensWear>> getElectronicsApi() async {
    final responce = await Dio()
        .get("https://fakestoreapi.com/products/category/electronics");

    if (responce.statusCode == 201 || responce.statusCode == 200) {
      final data =
          (responce.data as List).map((e) => MensWear.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getMenCarouselApi() async {
    final response =
        await Dio().get("https://dummyjson.com/products/category/mens-shirts");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getLaptopCarouselApi() async {
    final response =
        await Dio().get("https://dummyjson.com/products/category/laptops");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getWomenCarouselApi() async {
    final response = await Dio()
        .get("https://dummyjson.com/products/category/womens-dresses");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getJeweleryCarouselApi() async {
    final response = await Dio()
        .get("https://dummyjson.com/products/category/womens-jewellery");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getalldatafromapi() async {
    final response = await Dio().get("https://dummyjson.com/products/");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getMobileApi() async {
    final response =
        await Dio().get("https://dummyjson.com/products/category/smartphones");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getfraganceApi() async {
    final response =
        await Dio().get("https://dummyjson.com/products/category/fragrances");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<CarouselApi>> getSkincareApi() async {
    final response =
        await Dio().get("https://dummyjson.com/products/category/skincare");
    if (response.statusCode == 201 || response.statusCode == 200) {
      final data = (response.data['products'] as List)
          .map((e) => CarouselApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw Exception();
    }
  }
}

final apiprovider = Provider<Api>((ref) => Api());
final futureskincareProvider = FutureProvider<List<CarouselApi>>((ref) async {
  return ref.watch(apiprovider).getSkincareApi();
});
final futurefraganceProvider = FutureProvider<List<CarouselApi>>((ref) async {
  return ref.watch(apiprovider).getfraganceApi();
});

final futureMobileProvider = FutureProvider<List<CarouselApi>>((ref) async {
  return ref.watch(apiprovider).getMobileApi();
});

final futureMenapiprovider = FutureProvider<List<MensWear>>((ref) async {
  return ref.watch(apiprovider).getMensWearApi();
});
final futureWomenProvider = FutureProvider<List<MensWear>>((ref) async {
  return ref.watch(apiprovider).getWomenWearApi();
});
final futureJeweleryProvider = FutureProvider<List<MensWear>>((ref) async {
  return ref.watch(apiprovider).getJeweleryApi();
});
final futureElectronicsProvider = FutureProvider<List<MensWear>>((ref) async {
  return ref.watch(apiprovider).getElectronicsApi();
});
final futureMenShirtCarouselProvider =
    FutureProvider<List<CarouselApi>>((ref) async {
  return ref.watch(apiprovider).getMenCarouselApi();
});
final futureLaptopCarouselProvider =
    FutureProvider<List<CarouselApi>>((ref) async {
  return ref.watch(apiprovider).getLaptopCarouselApi();
});
final futureWomenShirtCarouselProvider =
    FutureProvider((ref) => ref.watch(apiprovider).getWomenCarouselApi());

final futureJeweleryCarouselProvider =
    FutureProvider<List<CarouselApi>>((ref) async {
  return ref.watch(apiprovider).getJeweleryCarouselApi();
});
final futureallproductProvider = FutureProvider<List<CarouselApi>>((ref) async {
  return ref.watch(apiprovider).getalldatafromapi();
});
