class Artikel {
  int id;
  String gambar;
  String judul;
  String deskripsi;

  Artikel({
    required this.id,
    required this.gambar,
    required this.judul,
    required this.deskripsi,
  });

  factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
        id: json["ID"] ?? 0,
        gambar: json["gambar"] ?? "",
        judul: json["judul"] ?? "",
        deskripsi: json["deskripsi"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "gambar": gambar,
        "judul": judul,
        "deskripsi": deskripsi,
      };
}
