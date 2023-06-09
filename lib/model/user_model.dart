class User {
  String? nama;
  String? fotoProfile;
  String? email;
  String? password;
  String? noTelepon;
  String? alamat;
  String? role;

  User({
    this.nama,
    this.fotoProfile,
    this.email,
    this.password,
    this.noTelepon,
    this.alamat,
    this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        nama: json["nama"],
        fotoProfile: json["foto_profile"],
        email: json["email"],
        password: json["password"],
        noTelepon: json["no_telepon"],
        alamat: json["alamat"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "foto_profile": fotoProfile,
        "email": email,
        "password": password,
        "no_telepon": noTelepon,
        "alamat": alamat,
        "role": role,
      };
}
