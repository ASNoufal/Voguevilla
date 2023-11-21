// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mensWear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MensWearImpl _$$MensWearImplFromJson(Map<String, dynamic> json) =>
    _$MensWearImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MensWearImplToJson(_$MensWearImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
      'rating': instance.rating,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
