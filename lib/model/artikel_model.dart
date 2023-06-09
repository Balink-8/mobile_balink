class Datum {
  int id;
  String gambar;
  String judul;
  String isi;

  Datum({
    required this.id,
    required this.gambar,
    required this.judul,
    required this.isi,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["ID"],
        gambar: json["gambar"],
        judul: json["judul"],
        isi: json["isi"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "gambar": gambar,
        "judul": judul,
        "isi": isi,
      };
}
