import 'package:freezed_annotation/freezed_annotation.dart';
part 'CarouselApi.freezed.dart';
part 'CarouselApi.g.dart';

@freezed
class CarouselApi with _$CarouselApi {
  const factory CarouselApi({
    required int id,
    required String title,
    required String description,
    required int price,
    required double discountPercentage,
    required double rating,
    required String category,
    required String thumbnail,
    required List images,
  }) = _CarouselApi;

  factory CarouselApi.fromJson(Map<String, dynamic> json) =>
      _$CarouselApiFromJson(json);
}
