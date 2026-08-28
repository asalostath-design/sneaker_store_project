import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/favorite_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Favorites",
            style:
            TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              icon: const Icon(Icons.favorite_border_outlined,
                  color: Colors.black),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          FavoriteItem(
            name: "Nike Air Max 270",
            price: "\$120.00",
            image: "assets/images/Nike_shoes.png",
          ),
          FavoriteItem(
            name: "Adidas Ultraboost",
            price: "\$150.00",
            image: "assets/images/Adidas_shoes.png",
          ),
          FavoriteItem(
            name: "Puma RS-X",
            price: "\$110.00",
            image: "assets/images/Puma_shoes.png",
          ),
          FavoriteItem(
            name: "Jordan 1 Mid",
            price: "\$130.00",
            image: "assets/images/Jordan_shoes.png",
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) Navigator.pushReplacementNamed(context, '/home');
          if (index == 1) Navigator.pushReplacementNamed(context, '/categories');
          if (index == 3) Navigator.pushReplacementNamed(context, '/profile');
        },
      ),
    );
  }
}
