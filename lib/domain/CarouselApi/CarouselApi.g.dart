// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CarouselApi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarouselApiImpl _$$CarouselApiImplFromJson(Map<String, dynamic> json) =>
    _$CarouselApiImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      category: json['category'] as String,
      thumbnail: json['thumbnail'] as String,
      images: json['images'] as List<dynamic>,
    );

Map<String, dynamic> _$$CarouselApiImplToJson(_$CarouselApiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
    };
