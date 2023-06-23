import 'package:mobile_balink/model/product_model.dart';
import 'package:mobile_balink/model/user_model.dart';

class Cart {
  int id;
  UserClass userId;
  Product produkId;
  int jumlah;

  Cart({
    required this.id,
    required this.userId,
    required this.produkId,
    required this.jumlah,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        id: json["ID"],
        userId: json["user_id"],
        produkId: json["produk_id"],
        jumlah: json["jumlah"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "kategori_id": userId,
        "produkId": produkId,
        "jumlah": jumlah,
      };
}
