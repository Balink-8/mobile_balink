class CategoryModel {
  int id;
  String nama;
  String deskripsi;

  CategoryModel({
    required this.id,
    required this.nama,
    required this.deskripsi,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
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
