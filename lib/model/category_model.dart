class Category {
  int id;
  String nama;
  String deskripsi;

  Category({
    required this.id,
    required this.nama,
    required this.deskripsi,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["ID"],
        nama: json["nama"],
        deskripsi: json["deskripsi"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "nama": nama,
        "deskripsi": deskripsi,
      };
}
