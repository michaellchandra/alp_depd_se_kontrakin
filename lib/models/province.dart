import 'package:equatable/equatable.dart';

class Province extends Equatable {
  final int? id;
  final String? provinceName;

  const Province({this.id, this.provinceName});

  factory Province.fromJson(Map<String, dynamic> json) => Province(
        id: json['id'] as int?,
        provinceName: json['provinceName'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'provinceName': provinceName,
      };

  Province copyWith({
    int? id,
    String? provinceName,
  }) {
    return Province(
      id: id ?? this.id,
      provinceName: provinceName ?? this.provinceName,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, provinceName];
}
