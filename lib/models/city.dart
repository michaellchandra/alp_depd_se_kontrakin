

import 'package:equatable/equatable.dart';

class City extends Equatable {
  final int? id;
  final int? provinceID;
  final String? cityName;

  const City({
    this.id,
    this.provinceID,
    this.cityName,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json['id'] as int?,
        provinceID: json['provinceID'] as int?,
        cityName: json['cityName'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'provinceID': provinceID,
        'cityName': cityName,
      };

  City copyWith({
    int? id,
    int? provinceID,
    String? cityName,
  }) {
    return City(
      id: id ?? this.id,
      provinceID: provinceID ?? this.provinceID,
      cityName: cityName ?? this.cityName,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      provinceID,
      cityName,
    ];
  }
}
