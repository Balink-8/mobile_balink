class Promo {
  int id;
  String nama;
  String deskripsi;
  String kode;
  int potonganHarga;

  Promo({
    required this.id,
    required this.nama,
    required this.deskripsi,
    required this.kode,
    required this.potonganHarga,
  });

  factory Promo.fromJson(Map<String, dynamic> json) => Promo(
        id: json["ID"],
        nama: json["nama"],
        deskripsi: json["deskripsi"],
        kode: json["kode"],
        potonganHarga: json["potongan_harga"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "nama": nama,
        "deskripsi": deskripsi,
        "kode": kode,
        "potongan_harga": potonganHarga,
      };
}
