class CategoryModel {
  int? id;
  String? kategoriId;
  String? nama;
  String? deskripsi;
  int? harga;
  int? stok;

  CategoryModel({
    this.id,
    this.kategoriId,
    this.nama,
    this.deskripsi,
    this.harga,
    this.stok,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["ID"],
        kategoriId: json["kategori_id"],
        nama: json["nama"],
        deskripsi: json["deskripsi"],
        harga: json["harga"],
        stok: json["stok"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "kategori_id": kategoriId,
        "nama": nama,
        "deskripsi": deskripsi,
        "harga": harga,
        "stok": stok,
      };
}
