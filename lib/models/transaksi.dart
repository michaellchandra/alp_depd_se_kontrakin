import 'package:equatable/equatable.dart';

class Transaksi extends Equatable {
  final int? id;
  final int? lesseeID;
  final int? lessorID;
  final String? startDate;
  final String? endDate;
  final int? rentDuration;
  final int? approved;
  final String? name;
  final String? phone;
  final String? address;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Transaksi({
    this.id,
    this.lesseeID,
    this.lessorID,
    this.startDate,
    this.endDate,
    this.rentDuration,
    this.approved,
    this.name,
    this.phone,
    this.address,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory Transaksi.fromJson(Map<String, dynamic> json) => Transaksi(
        id: json['id'] as int?,
        lesseeID: json['lesseeID'] as int?,
        lessorID: json['lessorID'] as int?,
        startDate: json['startDate'] as String?,
        endDate: json['endDate'] as String?,
        rentDuration: json['rentDuration'] as int?,
        approved: json['approved'] as int?,
        name: json['name'] as String?,
        phone: json['phone'] as String?,
        address: json['Address'] as String?,
        image: json['Image'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'lesseeID': lesseeID,
        'lessorID': lessorID,
        'startDate': startDate,
        'endDate': endDate,
        'rentDuration': rentDuration,
        'approved': approved,
        'name': name,
        'phone': phone,
        'Address': address,
        'Image': image,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      lesseeID,
      lessorID,
      startDate,
      endDate,
      rentDuration,
      approved,
      name,
      phone,
      address,
      image,
      createdAt,
      updatedAt,
    ];
  }
}
