import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/components/my_button.dart';
import 'package:pas_flutter/components/my_inputfield2.dart';
import 'package:pas_flutter/controllers/transaksi_controller.dart';

class TransaksiPage extends StatelessWidget {
  TransaksiPage({super.key});

  final controller = Get.put(TransaksiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 215, 222),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Detail Makanan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 128, 59, 59),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Image.network(
                controller.image,
                height: 280,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.harga,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  controller.namaMakanan,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Divider(height: 24),
                Text(
                  "Deskripsi",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  controller.deskripsi,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Divider(height: 24),
                MyInputField2(
                  myHint: "Masukkan jumlah item",
                  controller: controller.txtJumlahMakanan,
                  radius: 20,
                ),

                MyButton(
                  text: 'Hitung Sekarang',
                  onPressed: controller.transaksi,
                ),

                const SizedBox(height: 25),

                Obx(() {
                  if (controller.hasil.value == false) {
                    return const SizedBox();
                  }

                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hasil Perhitungan',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          'Subtotal: ${(controller.subtotal.value)}',
                        ),

                        const SizedBox(height: 12),

                        Text(
                          'PPN (5%): ${(controller.jumlahPPN.value)}',
                        ),


                        const Divider(height: 25),

                        Text(
                          'Total Bayar: ${(controller.totalBayar.value)}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 69, 119, 80),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
