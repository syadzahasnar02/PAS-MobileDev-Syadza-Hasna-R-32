import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransaksiController extends GetxController {
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtJumlahMakanan = TextEditingController();
  TextEditingController txtPpn = TextEditingController();
  TextEditingController txtSubtotal = TextEditingController();
  TextEditingController txtTotalBayar = TextEditingController();

  late String namaMakanan;
  late String harga;
  late String deskripsi;
  late String image;

  var subtotal = 0.0.obs;
  var jumlahPPN = 0.0.obs;
  var jumlahMakanan = 0.0.obs;
  var totalBayar = 0.0.obs;

  var hasil = false.obs;

  void transaksi() {
    if (txtJumlahMakanan.text.isEmpty ||
        txtPpn.text.isEmpty ||
        txtSubtotal.text.isEmpty) {
      hasil.value = false;
      Get.snackbar('Peringatan', 'Semua kolom harus diisi');
      return;
    }

    double harga;
    double ppn;
    double jumlahMakanan;

    jumlahMakanan = double.parse(txtJumlahMakanan.text);

    try {
      harga = double.parse(txtHarga.text);
      ppn = double.parse(txtPpn.text);
    } catch (e) {
      hasil.value = false;
      Get.snackbar('Peringatan', 'Masukkan angka yang valid');
      return;
    }

    if (harga <= 0 || ppn < 0 || ppn > 100) {
      hasil.value = false;
      Get.snackbar('Peringatan', 'Periksa kembali nilai yang dimasukkan');
      return;
    }

    //subtotal
    subtotal.value = harga * jumlahMakanan;

    //ppn
    jumlahPPN.value = subtotal.value * 0.05;

    //total bayar
    totalBayar.value = subtotal.value * jumlahPPN.value;

    hasil.value = true;
  }
  

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    image = arguments['image'];
  }
}
