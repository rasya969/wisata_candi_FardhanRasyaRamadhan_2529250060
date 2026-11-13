import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO : deklarasikan variabel yang dibutuhkan dan pasang  pada konstruktor 
  final Candi candi;

  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      // TODO  : Tetapkan parameter shape, elevation, dan margin pada Card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
       margin: const EdgeInsets.all(4.0),
       elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO : buat image sebagai anak dari column
          Expanded(
            // TODO : Implemantasi Hero animation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )
          )
        ]
        

      )
    );
  }
}