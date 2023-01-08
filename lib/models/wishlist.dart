import 'package:equatable/equatable.dart';

class Wishlist extends Equatable {
  final int? id;
  final int? kontrakanID;
  final int? userID;
  final String? address;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Wishlist({
    this.id, 
    this.kontrakanID, 
    this.userID, 
    this.address, 
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory Wishlist.fromJson(Map<String, dynamic> json) => Wishlist(
        id: json['id'] as int?,
        kontrakanID: json['kontrakanID'] as int?,
        userID: json['userID'] as int?,
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
        'kontrakanID': kontrakanID,
        'userID': kontrakanID,
        'Address': address,
        'Image': image,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  Wishlist copyWith({
    int? id,
    int? kontrakanID,
    int? userID,
    String? address,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Wishlist(
      id: id ?? this.id,
      kontrakanID: kontrakanID ?? this.kontrakanID,
      userID: userID ?? this.userID,
      address: address ?? this.address,
      image: image ?? this.image,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    id, 
    kontrakanID, 
    userID, 
    address,
    image,
    createdAt, 
    updatedAt,
  ];
}
