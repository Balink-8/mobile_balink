class Artikel {
  int id;
  String gambar;
  String judul;
  String isi;

  Artikel({
    required this.id,
    required this.gambar,
    required this.judul,
    required this.isi,
  });

  factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
        id: json["ID"] ?? 0,
        gambar: json["gambar"] ?? "",
        judul: json["judul"] ?? "",
        isi: json["isi"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "gambar": gambar,
        "judul": judul,
        "isi": isi,
      };
}
