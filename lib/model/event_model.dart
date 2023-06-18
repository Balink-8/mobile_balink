class Event {
  int id;
  String artikelId;
  String gambar;
  String nama;
  String deskripsi;
  int hargaTiket;
  int stokTiket;
  String waktuMulai;
  String waktuSelesai;
  String tanggalMulai;
  String tanggalSelesai;
  String lokasi;
  String linkLokasi;

  Event({
    required this.id,
    required this.artikelId,
    required this.gambar,
    required this.nama,
    required this.deskripsi,
    required this.hargaTiket,
    required this.stokTiket,
    required this.waktuMulai,
    required this.waktuSelesai,
    required this.tanggalMulai,
    required this.tanggalSelesai,
    required this.lokasi,
    required this.linkLokasi,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["ID"],
        artikelId: json["artikel_id"],
        gambar: json["gambar"],
        nama: json["nama"],
        deskripsi: json["deskripsi"],
        hargaTiket: json["harga_tiket"],
        stokTiket: json["stok_tiket"],
        waktuMulai: json["waktu_mulai"],
        waktuSelesai: json["waktu_selesai"],
        tanggalMulai: json["tanggal_mulai"],
        tanggalSelesai: json["tanggal_selesai"],
        lokasi: json["lokasi"],
        linkLokasi: json["link_lokasi"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "artikel_id": artikelId,
        "gambar": gambar,
        "nama": nama,
        "deskripsi": deskripsi,
        "harga_tiket": hargaTiket,
        "stok_tiket": stokTiket,
        "waktu_mulai": waktuMulai,
        "waktu_selesai": waktuSelesai,
        "tanggal_mulai": tanggalMulai,
        "tanggal_selesai": tanggalSelesai,
        "lokasi": lokasi,
        "link_lokasi": linkLokasi,
      };
}
