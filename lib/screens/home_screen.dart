import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Product> products = const [
    Product(
      id: 1,
      title: 'PC Gamer Ryzen 5',
      description: 'Equipo gamer con 16 GB de RAM y SSD de 500 GB.',
      price: 650.00,
      image: '',
      icon: Icons.computer,
    ),
    Product(
      id: 2,
      title: 'Laptop Core i5',
      description: 'Laptop ideal para estudios y trabajo.',
      price: 480.00,
      image: '',
      icon: Icons.laptop,
    ),
    Product(
      id: 3,
      title: 'Monitor Monster Gamer',
      description: 'Monitor 24" 144 hz.',
      price: 180.00,
      image: '',
      icon: Icons.desktop_windows,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZM TECHNOLOGY'),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.computer,
                  size: 50,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Text(
                  'Catálogo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Descubre nuestros productos y consulta sus características.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Productos disponibles',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          ...products.map(
            (product) => ProductCard(
              product: product,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      product: product,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}