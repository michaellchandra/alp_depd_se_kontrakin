import 'package:equatable/equatable.dart';

class TransaksiDetails extends Equatable {
  final int? id;
  final String? startDate;
  final int? rentDuration;
  final String? remainingDate;
  final String? lesseeName;
  final String? lessorName;
  final String? lesseePhone;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const TransaksiDetails({
    this.id,
    this.startDate,
    this.rentDuration,
    this.remainingDate,
    this.lesseeName,
    this.lessorName,
    this.lesseePhone,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory TransaksiDetails.fromJson(Map<String, dynamic> json) => TransaksiDetails(
        id: json['id'] as int?,
        startDate: json['startDate'] as String?,
        rentDuration: json['rentDuration'] as int?,
        remainingDate: json['remainingDate'] as String?,
        lesseeName: json['lesseeName'] as String?,
        lessorName: json['lessorName'] as String?,
        lesseePhone: json['lesseePhone'] as String?,
        image: json['image'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'startDate': startDate,
        'rentDuration': rentDuration,
        'remainingDate': remainingDate,
        'lesseeName': lesseeName,
        'lessorName': lessorName,
        'phone': lesseePhone,
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
      startDate,
      rentDuration,
      remainingDate,  
      lesseeName,
      lessorName,
      lesseePhone,
      image,
      createdAt,
      updatedAt,
    ];
  }
}
