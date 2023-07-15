class UserModel {
  final String names;
  String? driverId;
  final String email;
  final String phoneNumber;

  UserModel(
      {required this.names,
      this.driverId,
      required this.email,
      required this.phoneNumber});

  // tojson method
  Map<String, dynamic> toJson() => {
        'names': names,
        'driverId': driverId,
        'email': email,
        'phoneNumber': phoneNumber,
      };

  //copywith method
  UserModel copyWith({
    String? names,
    String? driverId,
    String? email,
    String? phoneNumber,
  }) {
    return UserModel(
      names: names ?? this.names,
      driverId: driverId ?? this.driverId,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
