import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ImageColumnExample()));
}

class ImageColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/74/2024/06/24/wp3467277-anime-fairy-tail-wallpaper-1106229048.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: Center(
                        child: Icon(
                          Icons.broken_image,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '23 April 2025, 10:00 WIB',
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Kekuatan Baru di Dunia Fairy Tail!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tim Natsu kembali dalam sebuah misi baru yang menegangkan! Kali ini, mereka harus menghadapi ancaman besar yang bisa menghancurkan dunia mereka. '
                      'Natsu dan kawan-kawan akan bertemu dengan musuh-musuh baru dan menghadapi tantangan yang lebih besar dari sebelumnya. '
                      'Di sisi lain, Lucy menemukan kunci rahasia yang akan mengubah takdir mereka semua!',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
