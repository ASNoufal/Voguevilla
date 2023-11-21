import 'package:voguevilla/domain/mensWear.dart';

abstract class IauthFacad {
  Future<List<MensWear>> getMensWearApi();
}
