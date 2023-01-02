import 'package:equatable/equatable.dart';

class Kontrakan extends Equatable {
  final int? id;
  final int? userId;
  final String? address;
  final String? city;
  final String? province;
  final int? pricePerYear;
  final String? image;
  final String? description;
  final int? active;
  final int? minimumRent;
  final String? phone;
  final String? lessorName;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Kontrakan({
    this.id,
    this.userId,
    this.address,
    this.city,
    this.province,
    this.pricePerYear,
    this.image,
    this.description,
    this.active,
    this.minimumRent,
    this.lessorName,
    this.phone,
    this.createdAt,
    this.updatedAt,
  });

  factory Kontrakan.fromJson(Map<String, dynamic> json) => Kontrakan(
        id: json['id'] as int?,
        userId: json['UserID'] as int?,
        address: json['Address'] as String?,
        city: json['City'] as String?,
        province: json['Province'] as String?,
        pricePerYear: json['Price_per_year'] as int?,
        image: json['Image'] as String?,
        description: json['Description'] as String?,
        active: json['Active'] as int?,
        minimumRent: json['MinimumRent'] as int?,
        lessorName: json['name'] as String?,
        phone: json['phone'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'UserID': userId,
        'Address': address,
        'City': city,
        'Province': province,
        'Price_per_year': pricePerYear,
        'Image': image,
        'Description': description,
        'Active': active,
        'MinimumRent': minimumRent,
        'name': lessorName,
        'phone': phone,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      userId,
      address,
      city,
      province,
      pricePerYear,
      image,
      description,
      active,
      minimumRent,
      lessorName,
      phone,
      createdAt,
      updatedAt,
    ];
  }
}
