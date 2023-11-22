import 'package:voguevilla/domain/CarouselApi/CarouselApi.dart';
import 'package:voguevilla/domain/mensWear.dart';

abstract class IauthFacad {
  Future<List<MensWear>> getMensWearApi();
  Future<List<MensWear>> getWomenWearApi();
  Future<List<MensWear>> getJeweleryApi();
  Future<List<MensWear>> getElectronicsApi();
  Future<List<CarouselApi>> getMenCarouselApi();
  Future<List<CarouselApi>> getWomenCarouselApi();
  Future<List<CarouselApi>> getLaptopCarouselApi();
  Future<List<CarouselApi>> getJeweleryCarouselApi();
  Future<List<CarouselApi>> getalldatafromapi();
  Future<List<CarouselApi>> getMobileApi();
  Future<List<CarouselApi>> getfraganceApi();
  Future<List<CarouselApi>> getSkincareApi();
}
