class Product {
  int id;
  String kategoriId;
  String nama;
  String deskripsi;
  int harga;
  int stok;

  Product({
    required this.id,
    required this.kategoriId,
    required this.nama,
    required this.deskripsi,
    required this.harga,
    required this.stok,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
