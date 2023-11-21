import 'package:voguevilla/domain/mensWear.dart';

abstract class IauthFacad {
  Future<List<MensWear>> getMensWearApi();
  Future<List<MensWear>> getWomenWearApi();
  Future<List<MensWear>> getJeweleryApi();
}
