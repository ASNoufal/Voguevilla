import 'package:freezed_annotation/freezed_annotation.dart';
part 'mensWear.freezed.dart';
part 'mensWear.g.dart';

@freezed
class MensWear with _$MensWear {
  const factory MensWear({
    required int id,
    required String title,
    required double price,
    required String image,
    required Rating rating,
    required String category,
    required String description,
  }) = _MensWear;

  factory MensWear.fromJson(Map<String, dynamic> json) =>
      _$MensWearFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double rate,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
