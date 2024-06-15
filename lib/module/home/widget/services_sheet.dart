import 'package:flutter/material.dart';
import 'package:gojek/module/home/widget/grid_view_widget.dart';

void showServicesBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        initialChildSize: 1.0,
        minChildSize: 0.5,
        maxChildSize: 1.0,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            ),
            child: Column(
              children: [
                Container(
                  width: 40,
                  height: 6,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            top: 16.0,
                          ),
                          child: Text(
                            'Top Services',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        const GridViewWidget(
                          isServicesSheetShown: true,
                        ),
                        const SizedBox(height: 16.0),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            bottom: 16.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Other Services',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Pesan-Antar Makanan dan Belanjaan',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              _buildService(
                                'GoFood',
                                'Nikmati Kenikmatan, Pesan dari Mana Saja',
                                'assets/gridHeader/go_mart.png',
                                const Color(
                                  0xFFED2739,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Divider(),
                              ),
                              _buildService(
                                'GoMart',
                                'Belanja Mudah, Hidup Lebih Nyaman',
                                'assets/gridHeader/go_mart.png',
                                const Color(
                                  0xFFED2739,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Divider(),
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Transportasi',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              _buildService(
                                'GoRide',
                                'Perjalanan Nyaman, Sejauh Klik',
                                'assets/gridHeader/go_ride.png',
                                const Color(0xFF00AA12),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Divider(),
                              ),
                              _buildService(
                                'GoCar',
                                'Mobil Pilihan, Perjalanan Aman',
                                'assets/gridHeader/go_car.png',
                                const Color(0xFF00AA12),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Divider(),
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Pengiriman Barang',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              _buildService(
                                'GoSend',
                                'Kirim Cepat, Terima Tepat',
                                'assets/gridHeader/go_send.png',
                                const Color(0xFF00AA12),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Divider(),
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Isi Ulang Pulsa dan Pembayaran Tagihan',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              _buildService(
                                'GoPulsa',
                                'Isi Ulang Mudah, Selalu Terhubung',
                                'assets/gridHeader/go_pulsa.png',
                                const Color(0xFF00AED5),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Divider(),
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Loyalitas Pelanggan',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              _buildService(
                                'GoClub',
                                'Setia Bersama, Hadiah Istimewa',
                                'assets/gridHeader/go_club.png',
                                Colors.transparent,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Divider(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

ListTile _buildService(
    String title, String tagline, String image, Color color) {
  return ListTile(
    horizontalTitleGap: 12.0,
    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    leading: Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: color,
      ),
      child: Center(
        child: Image.asset(
          image,
          height: 25,
          width: 25,
        ),
      ),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          tagline,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}
