import 'package:get/get.dart';
import 'package:pas_flutter/models/makanan_model.dart';

class ListMakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      harga: " Rp25.000",
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk",
      image: "https://i.pinimg.com/1200x/45/1e/a3/451ea38af721b401cff4691e73a57de1.jpg",
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      harga: "Rp30.000",
      deskripsi: " Ayam bakar olesan madu murni lengkap dengan sambal, terasi dan lalapan",
      image: "https://i.pinimg.com/736x/a5/19/1d/a5191d46374bdc6b324ff56fb922d38a.jpg",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      harga: "Rp28.000",
      deskripsi: " 10 tusuk sate ayam daging pilihan dengan siraman, bumbu kacang kental.",
      image: "https://i.pinimg.com/1200x/6e/16/e2/6e16e2f7b483c5495a0287c29b3adbf2.jpg",
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      harga: "Rp20.000",
      deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      image: "https://i.pinimg.com/736x/ab/44/be/ab44bee2c63eeeec4817c52adb5e962f.jpg",
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      harga: "Rp8.000",
      deskripsi: " Minuman teh melati segar dengan gula asli dan es batu kristal.",
      image: "https://i.pinimg.com/1200x/b0/9f/c2/b09fc29cf290ab6845c5b32bcf2e38ca.jpg",
    ),
  ];
}
