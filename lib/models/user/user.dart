class User {
  final String id;
  final String walletKey;
  final String image;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String dateOfBirth;

  User({
    required this.id,
    required this.walletKey,
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.dateOfBirth,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      walletKey: json['wallet_key'],
      image: json['image'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
      dateOfBirth: json['date_of_birth'],
    );
  }
}
